//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz.
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {
    // Specify callback methods for view controller here...
}

class ___FILEBASENAMEASIDENTIFIER___ {
    
    // MARK: - Dependencies
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    private let flowController: ___VARIABLE_productName___FlowProtocol
    
    // MARK: - Properties
    
    // Properties here...
    
    // MARK: - Initializers
    
    init(flowController: ___VARIABLE_productName___FlowProtocol) {
        self.flowController = flowController
    }
    
    // MARK: - Actions
    
    // Handlers of UI actions here...
}
