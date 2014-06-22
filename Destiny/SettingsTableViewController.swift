import UIKit

class SettingsTableViewController: UITableViewController {
    let model: Settings
    
    @IBOutlet var sound: UISwitch
    
    init(coder: NSCoder?) {
        model = Settings()
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        sound.on = model.sound
    }
    
    func commit() {
        model.sound = sound.on
        
        model.save()
    }
}
