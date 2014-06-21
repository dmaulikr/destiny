import UIKit

@objc(RootViewController) class RootViewController: UIViewController, UIPageViewControllerDelegate {
    
    @IBOutlet var diceView: DiceViewController
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject?) {
        if let settings = segue.destinationViewController as? SettingsViewController {
            settings.model = nil
        }
    }

    @IBAction func settingsCancel(segue: UIStoryboardSegue!) {
        
    }
    
    @IBAction func settingsDone(segue: UIStoryboardSegue!) {
        
    }
    
    @IBAction func roll(sender: AnyObject!) {
        
    }
    
}

