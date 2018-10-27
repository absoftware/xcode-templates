
# ABSwift Templates

Xcode templates for MVVM Swift modules.

## Installation

Clone or download sources and launch installation script:

```
sh install.sh
```

It will copy all templates to your `${HOME}/Library/Developer/Xcode/Templates` directory. Restart **Xcode**.

## Usage

1. Create or open existing iOS project in **Xcode**.
1. Create group for you MVVM module in Navigator, for example `MyModule`.
1. Go to **New File...** and select **iOS** tab.
1. Scroll to **AB Software** section at the bottom.
1. Select **MVVM**.
1. Type name of module and configure other options.
1. Click **Next** and create files.

Please take under your attention that Xcode templates allow to create only files. Groups or directories should be created by you manually.

## MVVM

**MVVM** template creates files:

* **<ModuleName>ViewController.swift**
	* `class <ModuleName>ViewController: <SubclassViewController>, <ModuleName>ViewModelDelegate`
* **<ModuleName>ViewModel.swift**
	* `protocol <ModuleName>ViewModelDelegate`
	* `class <ModuleName>ViewModel`
