import UIKit

class QuizViewController: UIViewController {

    var onQuizComplete: ((_ correct: Int, _ total: Int) -> Void)?

    private let topic: QuizTopic
    private let questions: [QuizQuestion]
    private var currentIndex = 0
    private var correctCount = 0
    private var isLocked = false

    private let backgroundView = BackgroundShapesView()
    private let questionLabel = UILabel()
    private let imageView = UIImageView()
    private var answerButtons: [UIButton] = []

    init(topic: QuizTopic, questions: [QuizQuestion]) {
        self.topic = topic
        self.questions = questions
        super.init(nibName: nil, bundle: nil)
        self.title = topic.rawValue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        loadQuestion()
        AnimationHelper.fadeIn(view: view, duration: 0.4)
    }

    private func setupView() {
        view.backgroundColor = UIColor(red: 15/255, green: 23/255, blue: 42/255, alpha: 1.0)

        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backgroundView)
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        questionLabel.textColor = .white
        questionLabel.font = UIFont.systemFont(ofSize: 54, weight: .bold)
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        questionLabel.translatesAutoresizingMaskIntoConstraints = false

        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(questionLabel)
        view.addSubview(imageView)

        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.spacing = 24
        stack.translatesAutoresizingMaskIntoConstraints = false

        for index in 0..<4 {
            let button = UIButton(type: .system)
            button.tag = index
            button.setTitle("Answer \(index+1)", for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = UIColor(red: 30/255, green: 64/255, blue: 175/255, alpha: 1.0)
            button.layer.cornerRadius = 26
            button.clipsToBounds = true
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: #selector(answerTapped(_:)), for: .primaryActionTriggered)
            button.widthAnchor.constraint(equalToConstant: 600).isActive = true
            button.heightAnchor.constraint(equalToConstant: 100).isActive = true
            answerButtons.append(button)
            stack.addArrangedSubview(button)
        }

        view.addSubview(stack)

        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),

            imageView.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 40),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 280),

            stack.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func loadQuestion() {
        guard currentIndex < questions.count else {
            onQuizComplete?(correctCount, questions.count)
            return
        }

        isLocked = false
        let q = questions[currentIndex]
        questionLabel.text = q.question

        if let imageName = q.imageName, let image = UIImage(named: imageName) {
            imageView.image = image
            imageView.isHidden = false
        } else {
            imageView.isHidden = true
        }

        for (i, button) in answerButtons.enumerated() {
            if i < q.answers.count {
                button.setTitle(q.answers[i], for: .normal)
                button.isHidden = false
                button.backgroundColor = UIColor(red: 30/255, green: 64/255, blue: 175/255, alpha: 1.0)
            } else {
                button.isHidden = true
            }
        }
    }

    @objc private func answerTapped(_ sender: UIButton) {
        guard !isLocked else { return }
        isLocked = true

        let selectedIndex = sender.tag
        let question = questions[currentIndex]

        if selectedIndex == question.correctIndex {
            correctCount += 1
            SoundManager.shared.playCorrect()
            AnimationHelper.correctBounce(sender)
        } else {
            SoundManager.shared.playWrong()
            AnimationHelper.wrongShake(sender)
            if question.correctIndex < answerButtons.count {
                let correctButton = answerButtons[question.correctIndex]
                AnimationHelper.highlightCorrect(correctButton)
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.1) { [weak self] in
            guard let self = self else { return }
            self.currentIndex += 1
            if self.currentIndex < self.questions.count {
                self.loadQuestion()
                AnimationHelper.fadeIn(view: self.view, duration: 0.3)
            } else {
                self.onQuizComplete?(self.correctCount, self.questions.count)
            }
        }
    }

    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)

        if let next = context.nextFocusedView as? UIButton {
            coordinator.addCoordinatedAnimations({
                AnimationHelper.focusGain(on: next)
            }, completion: nil)
        }
        if let previous = context.previouslyFocusedView as? UIButton {
            coordinator.addCoordinatedAnimations({
                AnimationHelper.focusLose(on: previous)
            }, completion: nil)
        }
    }
}
