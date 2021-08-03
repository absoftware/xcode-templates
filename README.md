
# Xcode Templates

Xcode templates for **UIKit** subclasses and MVVM modules.

Template for MVVM module is based on delegate between view model and view controller without support for Dependency Inversion Principle. Support for reactive frameworks and abstraction will be delivered in future versions.

Templates for subclasses of **UIKit** views support only following classes for now: `UIButton`, `UIView`, `UITableViewCell`.

## Installation

Clone or download sources and launch installation script:

```
sh install.sh
```

It will copy all templates to your `${HOME}/Library/Developer/Xcode/Templates` directory. Restart **Xcode**.

## Information

> ⚠️ Xcode templates allow to create two kind of templates. First one is **project template** which allows to create entire project from scratch. This kind of template allows to use subfolders and build hierarchy of files. This project doesn't deliver templates of this kind for now. Second type is just flat list of files. **Xcode** doesn't allow to create subfolders when using **Xcode** ➡ **File** ➡ **New** ➡ **File...** dialog. Templates delivered in this project use this kind of templates. So it will be always flat list of files without subfolders.

## Usage

1. Create or open existing iOS project in **Xcode**.
1. Create group for you MVVM module in Navigator, for example `MyModule`.
1. Go to **Xcode** ➡ **File** ➡ **New** ➡ **File...** and select **iOS** tab.
1. Scroll to **AB Software** section at the bottom.
1. Select template, for example **MVVM**.
1. Type name of module and configure other options.
1. Click **Next** and create files.

Please take under your attention that Xcode templates allow to create only files. Groups or directories should be created by you manually.

## MVVM template

Template for MVVM module creates following files:

#### File `<ModuleName>Factory.swift`

```
final class <MyModule>Factory {

    static func pushIn(navigationController: UINavigationController, dependencyManager: DependencyManager) {
        ...
    }
    
    static func rootIn(navigationController: UINavigationController, dependencyManager: DependencyManager) {
        ...
    }
    
    static func showIn(parentController: UIViewController, dependencyManager: DependencyManager) {
        ...
    }

    static func create(navigationController: UINavigationController?, parentController: UIViewController?, dependencyManager: DependencyManager) -> <MyModule>ViewController {
        ...
    }
}
```

#### File `<ModuleName>FlowController.swift`

```
class <ModuleName>FlowController {
    
    // MARK: - Dependencies

    weak var navigationController: UINavigationController?
    weak var parentController: UIViewController?
    weak var viewController: <ModuleName>ViewController!
    let dependencyManager: DependencyManager

    // MARK: - Initializers

    init(navigationController: UINavigationController?, parentController: UIViewController?, viewController: <ModuleName>ViewController, dependencyManager: DependencyManager) {
        self.navigationController = navigationController
        self.parentController = parentController
        self.viewController = viewController
        self.dependencyManager = dependencyManager
    }

    // MARK: - Actions

    // Navigation actions here...
}
```

#### File `<ModuleName>ViewController.swift`

```
class <ModuleName>ViewController: UIViewController, <ModuleName>ViewModelDelegate {

    // MARK: - Subviews

    // Subviews go here

    // MARK: - Dependencies
    
    var viewModel: MenuViewModel!

    // MARK: - Properties

    // Properties go here

	// MARK: - UIViewController methods

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    ...

    // MARK: - MenuViewController methods
    
    // Custom methods here...

    // MARK: - <ModuleName>ViewModelDelegate methods
    
    // Delegate methods here...

    // MARK: - Actions

    // UI actions here...
}
```

#### File `<ModuleName>ViewModel.swift`

```
protocol <ModuleName>ViewModelDelegate: AnyObject {
    // Specify callback methods for view controller.
}

class <ModuleName>ViewModel {
    
    // MARK: - Dependencies
    
    weak var delegate: <ModuleName>ViewModelDelegate?
    private let flowController: <ModuleName>FlowController
    
    // MARK: - Properties
    
    // Properties here...
    
    // MARK: - Initializers
    
    init(flowController: <ModuleName>FlowController) {
        self.flowController = flowController
    }
    
    // MARK: - Actions
    
    // Handlers of UI actions here...
}
```
