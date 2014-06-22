import UIKit

class SettingsViewController: UIViewController {
    var settingsTable: SettingsTableViewController!
    
    //two segues are sourced here: one to embed the settings table, one to return home
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject?) {
        if let table = segue.destinationViewController as? SettingsTableViewController {
            settingsTable = table
        } else {
            settingsTable.commit()
        }
    }
}
