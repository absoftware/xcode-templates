//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import UIKit

protocol ___VARIABLE_productName___FlowProtocol: AnyObject {
    // Specify navigation actions exposed for view model here...
}

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___FlowProtocol {

    // MARK: - Dependencies

    private weak var navigationController: UINavigationController?
    private weak var parentController: UIViewController?
    private weak var viewController: ___VARIABLE_productName___ViewController!
    private let dependencyManager: DependencyManager
    private let callback: ___VARIABLE_productName___Callback?

    // MARK: - Initializers

    init(navigationController: UINavigationController?, parentController: UIViewController?, viewController: ___VARIABLE_productName___ViewController, dependencyManager: DependencyManager, callback: ___VARIABLE_productName___Callback? = nil) {
        self.navigationController = navigationController
        self.parentController = parentController
        self.viewController = viewController
        self.dependencyManager = dependencyManager
        self.callback = callback
    }

    // MARK: - ___VARIABLE_productName___FlowProtocol actions

    // Implement navigation actions here...
}
