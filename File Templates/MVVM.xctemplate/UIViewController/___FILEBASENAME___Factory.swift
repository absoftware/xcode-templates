//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___ {
    
    static func pushIn(navigationController: UINavigationController, dependencyManager: DependencyManager) {

        // View controller
        let viewController = ___FILEBASENAMEASIDENTIFIER___.create(
            navigationController: navigationController,
            parentController: nil,
            dependencyManager: dependencyManager)

        // Push controller
        navigationController.pushViewController(viewController, animated: true)
    }

    static func rootIn(navigationController: UINavigationController, dependencyManager: DependencyManager) {

        // View controller
        let viewController = ___FILEBASENAMEASIDENTIFIER___.create(
            navigationController: navigationController,
            parentController: nil,
            dependencyManager: dependencyManager)

        // Root controller
        navigationController.viewControllers = [viewController]
    }

    static func showIn(parentController: UIViewController, dependencyManager: DependencyManager) {

        // View controller
        let viewController = ___FILEBASENAMEASIDENTIFIER___.create(
            navigationController: nil,
            parentController: parentController,
            dependencyManager: dependencyManager)

        // Present controller
        parentController.present(viewController, animated: true, completion: nil)
    }

    static func create(navigationController: UINavigationController?, parentController: UIViewController?, dependencyManager: DependencyManager) -> ___VARIABLE_productName___ViewController {

        // View controller
        let viewController = ___VARIABLE_productName___ViewController()

        // Flow controller
        let flowController = ___VARIABLE_productName___FlowController(
            navigationController: navigationController,
            parentController: parentController,
            viewController: viewController,
            dependencyManager: dependencyManager)

        // View model
        let viewModel = ___VARIABLE_productName___ViewModel(flowController: flowController)
        viewModel.delegate = viewController
        viewController.viewModel = viewModel

        // Return controller
        return viewController
    }
}
