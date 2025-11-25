import UIKit

class ResultViewController: UIViewController {

    var onPlayAgain: (() -> Void)?

    private let score: Int
    private let total: Int

    private let backgroundView = BackgroundShapesView()
    private let titleLabel = UILabel()
    private let scoreLabel = UILabel()
    private let starBurstView = StarBurstView()
    private let playAgainButton = UIButton(type: .system)

    init(score: Int, total: Int) {
        self.score = score
        self.total = total
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        AnimationHelper.fadeIn(view: view, duration: 0.4)
        starBurstView.animate()
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

        titleLabel.text = "Great job, Little Genius!"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 64, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        scoreLabel.text = "You scored \(score) out of \(total)!"
        scoreLabel.textColor = UIColor(white: 1.0, alpha: 0.9)
        scoreLabel.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        scoreLabel.textAlignment = .center
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false

        starBurstView.translatesAutoresizingMaskIntoConstraints = false

        playAgainButton.setTitle("Play Again", for: .normal)
        playAgainButton.titleLabel?.font = UIFont.systemFont(ofSize: 44, weight: .semibold)
        playAgainButton.setTitleColor(.white, for: .normal)
        playAgainButton.backgroundColor = UIColor(red: 168/255, green: 85/255, blue: 247/255, alpha: 1.0)
        playAgainButton.layer.cornerRadius = 30
        playAgainButton.clipsToBounds = true
        playAgainButton.translatesAutoresizingMaskIntoConstraints = false
        playAgainButton.addTarget(self, action: #selector(playAgainTapped), for: .primaryActionTriggered)

        view.addSubview(titleLabel)
        view.addSubview(scoreLabel)
        view.addSubview(starBurstView)
        view.addSubview(playAgainButton)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),

            scoreLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            scoreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            scoreLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),

            starBurstView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            starBurstView.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 40),
            starBurstView.widthAnchor.constraint(equalToConstant: 400),
            starBurstView.heightAnchor.constraint(equalToConstant: 300),

            playAgainButton.topAnchor.constraint(equalTo: starBurstView.bottomAnchor, constant: 60),
            playAgainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playAgainButton.widthAnchor.constraint(equalToConstant: 400),
            playAgainButton.heightAnchor.constraint(equalToConstant: 120)
        ])
    }

    @objc private func playAgainTapped() {
        SoundManager.shared.playTap()
        AnimationHelper.buttonBounce(playAgainButton) { [weak self] in
            self?.onPlayAgain?()
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
