import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private let appRouter = AppRouter()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Инициализация окна
        window = UIWindow(frame: UIScreen.main.bounds)
        
        guard let window = window else {
            fatalError("Failed to initialize window")
        }
        
        // Запуск роутера
        appRouter.start(window: window)
        
        return true
    }
}
