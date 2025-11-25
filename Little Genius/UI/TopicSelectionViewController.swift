import UIKit

class TopicSelectionViewController: UIViewController {

    var onTopicSelected: ((QuizTopic) -> Void)?

    private let titleLabel = UILabel()
    private let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        AnimationHelper.fadeIn(view: view, duration: 0.4)
    }

    private func setupView() {
        view.backgroundColor = UIColor(red: 15/255, green: 23/255, blue: 42/255, alpha: 1.0)

        let backgroundView = BackgroundShapesView()
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backgroundView)
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        titleLabel.text = "Choose a Topic"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 64, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 24
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        for topic in QuizTopic.allCases {
            let button = UIButton(type: .system)
            button.setTitle(topic.rawValue, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = UIColor(red: 30/255, green: 64/255, blue: 175/255, alpha: 1.0)
            button.layer.cornerRadius = 26
            button.clipsToBounds = true
            button.translatesAutoresizingMaskIntoConstraints = false
            button.widthAnchor.constraint(equalToConstant: 600).isActive = true
            button.heightAnchor.constraint(equalToConstant: 100).isActive = true
            button.tag = topicIndex(for: topic)
            button.addTarget(self, action: #selector(topicTapped(_:)), for: .primaryActionTriggered)
            stackView.addArrangedSubview(button)
        }

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),

            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    private func topicIndex(for topic: QuizTopic) -> Int {
        return QuizTopic.allCases.firstIndex(of: topic) ?? 0
    }

    private func topic(for index: Int) -> QuizTopic? {
        guard index >= 0 && index < QuizTopic.allCases.count else { return nil }
        return QuizTopic.allCases[index]
    }

    @objc private func topicTapped(_ sender: UIButton) {
        guard let topic = topic(for: sender.tag) else { return }
        SoundManager.shared.playTap()
        AnimationHelper.buttonBounce(sender) { [weak self] in
            self?.onTopicSelected?(topic)
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
