import UIKit

class QuizRootViewController: UIViewController {

    private var navigationControllerWrapper: UINavigationController?
    private var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black

        let nav = UINavigationController()
        nav.isNavigationBarHidden = true
        nav.view.frame = view.bounds
        nav.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(nav.view)
        addChild(nav)
        nav.didMove(toParent: self)

        let coordinator = AppCoordinator(navigationController: nav)
        self.coordinator = coordinator
        self.navigationControllerWrapper = nav
        coordinator.start()
    }
}
