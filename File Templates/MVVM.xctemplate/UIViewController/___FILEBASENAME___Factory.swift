//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import UIKit

enum ___VARIABLE_productName___Event {
    case completed // Edit events depending on your needs here...
}

typealias ___VARIABLE_productName___Callback = (_ event: ___VARIABLE_productName___Event) -> Void

final class ___FILEBASENAMEASIDENTIFIER___ {
    
    static func pushIn(navigationController: UINavigationController, dependencyManager: DependencyManager, callback: ___VARIABLE_productName___Callback? = nil) {

        // View controller
        let viewController = ___FILEBASENAMEASIDENTIFIER___.create(
            navigationController: navigationController,
            parentController: nil,
            dependencyManager: dependencyManager,
            callback: callback)

        // Push controller
        navigationController.pushViewController(viewController, animated: true)
    }

    static func rootIn(navigationController: UINavigationController, dependencyManager: DependencyManager, callback: ___VARIABLE_productName___Callback? = nil) {

        // View controller
        let viewController = ___FILEBASENAMEASIDENTIFIER___.create(
            navigationController: navigationController,
            parentController: nil,
            dependencyManager: dependencyManager,
            callback: callback)

        // Root controller
        navigationController.viewControllers = [viewController]
    }

    static func showIn(parentController: UIViewController, dependencyManager: DependencyManager, callback: ___VARIABLE_productName___Callback? = nil) {

        // View controller
        let viewController = ___FILEBASENAMEASIDENTIFIER___.create(
            navigationController: nil,
            parentController: parentController,
            dependencyManager: dependencyManager,
            callback: callback)

        // Present controller
        parentController.present(viewController, animated: true, completion: nil)
    }

    static func create(navigationController: UINavigationController?, parentController: UIViewController?, dependencyManager: DependencyManager, callback: ___VARIABLE_productName___Callback? = nil) -> ___VARIABLE_productName___ViewController {

        // View controller
        let viewController = ___VARIABLE_productName___ViewController()

        // Flow controller
        let flowController = ___VARIABLE_productName___FlowController(
            navigationController: navigationController,
            parentController: parentController,
            viewController: viewController,
            dependencyManager: dependencyManager,
            callback: callback)

        // View model
        let viewModel = ___VARIABLE_productName___ViewModel(flowController: flowController)
        viewModel.delegate = viewController
        viewController.viewModel = viewModel

        // Return controller
        return viewController
    }
}
