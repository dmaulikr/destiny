import UIKit

class SettingsViewController: UITableViewController {
    var model: Settings!
    
    @IBOutlet var sound: UISwitch
    
    override func viewDidLoad() {
        sound.on = model.sound
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        model.sound = sound.on
    }
}
