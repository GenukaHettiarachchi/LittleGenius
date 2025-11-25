import UIKit

class StartViewController: UIViewController {

    var onStartQuiz: (() -> Void)?

    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    private let startButton = UIButton(type: .system)
    private let backgroundView = BackgroundShapesView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        AnimationHelper.fadeIn(view: view, duration: 0.6)
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

        titleLabel.text = "Little Genius"
        titleLabel.font = UIFont.systemFont(ofSize: 80, weight: .bold)
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        subtitleLabel.text = "Fun quizzes for curious kids!"
        subtitleLabel.font = UIFont.systemFont(ofSize: 36, weight: .medium)
        subtitleLabel.textColor = UIColor(white: 1.0, alpha: 0.8)
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false

        startButton.setTitle("Start Quiz", for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 44, weight: .semibold)
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = UIColor(red: 59/255, green: 130/255, blue: 246/255, alpha: 1.0)
        startButton.layer.cornerRadius = 32
        startButton.clipsToBounds = true
        startButton.translatesAutoresizingMaskIntoConstraints = false

        startButton.addTarget(self, action: #selector(startTapped), for: .primaryActionTriggered)

        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(startButton)

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120),

            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            startButton.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 80),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.widthAnchor.constraint(equalToConstant: 400),
            startButton.heightAnchor.constraint(equalToConstant: 120)
        ])
    }

    @objc private func startTapped() {
        SoundManager.shared.playTap()
        AnimationHelper.buttonBounce(startButton) { [weak self] in
            self?.onStartQuiz?()
        }
    }

    override func didUpdateFocus(
        in context: UIFocusUpdateContext,
        with coordinator: UIFocusAnimationCoordinator
    ) {
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
