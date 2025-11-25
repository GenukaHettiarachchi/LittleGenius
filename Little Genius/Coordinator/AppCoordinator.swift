import UIKit

enum QuizTopic: String, CaseIterable {
    case animals = "Animals"
    case colors = "Colors"
    case shapes = "Shapes"
    case numbers = "Numbers"
    case letters = "Letters"
    case food = "Food"
    case weather = "Weather"
    case vehicles = "Vehicles"
}

class AppCoordinator {

    let navigationController: UINavigationController
    private var currentTopic: QuizTopic = .animals

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let startVC = StartViewController()
        startVC.onStartQuiz = { [weak self] in
            self?.showTopicSelection()
        }
        navigationController.setViewControllers([startVC], animated: false)
    }

    func showTopicSelection() {
        let topicVC = TopicSelectionViewController()
        topicVC.onTopicSelected = { [weak self] topic in
            self?.showTopic(topic)
        }
        navigationController.pushViewController(topicVC, animated: true)
    }

    func showTopic(_ topic: QuizTopic) {
        currentTopic = topic
        let questions = QuizData.questions(for: topic)
        let quizVC = QuizViewController(topic: topic, questions: questions)
        quizVC.onQuizComplete = { [weak self] correctCount, total in
            self?.showResult(correct: correctCount, total: total)
        }
        navigationController.pushViewController(quizVC, animated: true)
    }

    func showResult(correct: Int, total: Int) {
        let resultVC = ResultViewController(score: correct, total: total)
        resultVC.onPlayAgain = { [weak self] in
            self?.showTopicSelection()
        }
        navigationController.pushViewController(resultVC, animated: true)
    }
}
