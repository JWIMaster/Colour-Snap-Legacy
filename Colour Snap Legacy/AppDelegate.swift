import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Make sure the window fills the entire screen
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set root view controller
        let rootVC = ViewController()
        window?.rootViewController = rootVC
        
        // Flexible autoresizing for root view
        rootVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        window?.makeKeyAndVisible()
        return true
    }
}
