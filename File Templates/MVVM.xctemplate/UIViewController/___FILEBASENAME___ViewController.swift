//___FILEHEADER___
//  MVVM module
//  Template designed by Ariel Bogdziewicz (AB Software).
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_viewControllerSubclass___, ___VARIABLE_productName___ViewModelDelegate {

    // MARK: - Dependencies
    
    var viewModel: ___VARIABLE_productName___ViewModel!
    
    // MARK: - Properties
    
    // Properties here...

	// MARK: - UIViewController methods

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create view model.
        self.viewModel = ___VARIABLE_productName___ViewModel()
        self.viewModel.delegate = self

        // Initialize other things here...
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - ___FILEBASENAMEASIDENTIFIER___ methods
    
    // Custom methods here...
    
    // MARK: - ___VARIABLE_productName___ViewModelDelegate methods
    
    // Delegate methods here...
}
