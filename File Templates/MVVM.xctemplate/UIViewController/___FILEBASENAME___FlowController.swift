//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies

    weak var navigationController: UINavigationController?
    weak var parentController: UIViewController?
    weak var viewController: ___VARIABLE_productName___ViewController!
    let dependencyManager: DependencyManager

    // MARK: - Initializers

    init(navigationController: UINavigationController?, parentController: UIViewController?, viewController: ___VARIABLE_productName___ViewController, dependencyManager: DependencyManager) {
        self.navigationController = navigationController
        self.parentController = parentController
        self.viewController = viewController
        self.dependencyManager = dependencyManager
    }

    // MARK: - Actions

    // Navigation actions here...
}
