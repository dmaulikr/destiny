import UIKit

class SettingsViewController: UIViewController {
    var settingsTable: SettingsTableViewController!
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        switch segue?.identifier {
        case .Some("embed"):
            settingsTable = segue!.destinationViewController as SettingsTableViewController
        case .Some("pop"):
            settingsTable.commit()
        default:
            return
        }
    }
}
