import UIKit

class AppRouter {
    private let navigationController: UINavigationController
    
    init() {
        let rootViewController = ViewController()
        navigationController = UINavigationController(rootViewController: rootViewController)
    }
    
    func start(window: UIWindow?) {
        guard let window = window else {
            fatalError("Window is nil")
        }
      
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
