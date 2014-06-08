import UIKit

@objc(RootViewController) class RootViewController: UIViewController, UIPageViewControllerDelegate {
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject?) {
        if let settings = segue.destinationViewController as? SettingsViewController {
            settings.model = nil
        }
    }

    @IBAction func settingsCancel(segue: UIStoryboardSegue!) {
        
    }
    
    @IBAction func settingsDone(segue: UIStoryboardSegue!) {
        
    }
    
}

