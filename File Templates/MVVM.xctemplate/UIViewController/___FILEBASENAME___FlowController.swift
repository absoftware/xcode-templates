//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies

    private weak var navigationController: UINavigationController?
    private weak var parentController: UIViewController?
    private weak var viewController: ___VARIABLE_productName___ViewController!
    private let dependencyManager: DependencyManager

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
