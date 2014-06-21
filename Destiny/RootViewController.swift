import UIKit
import AVFoundation

@objc(RootViewController) class RootViewController: UIViewController, UIPageViewControllerDelegate {
    
    @IBOutlet var diceView: DiceViewController
    
    let player: AVAudioPlayer
    
    init(coder: NSCoder?) {
        let soundPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("dice", ofType: "wav"))
        player = AVAudioPlayer(contentsOfURL: soundPath, error: nil)
        player.volume = 1.0
        
        super.init(coder: coder)
    }
    
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
        player.play()
    }
    
}

