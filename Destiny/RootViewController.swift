import UIKit
import AVFoundation

@objc(RootViewController) class RootViewController: UIViewController {
    
    let config: Settings
    let player: AVAudioPlayer
    
    @IBOutlet var diceView: DiceViewController
    
    init(coder: NSCoder?) {
        config = Settings()
        
        let soundPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("dice", ofType: "wav"))
        player = AVAudioPlayer(contentsOfURL: soundPath, error: nil)
        player.prepareToPlay() //prevent audio lag
        
        super.init(coder: coder)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject?) {
        if let settings = segue.destinationViewController as? SettingsViewController {
            settings.model = config
        }
    }
    
    @IBAction func settingsDone(segue: UIStoryboardSegue!) {
        config.save()
    }
    
    @IBAction func settingsCancel(segue: UIStoryboardSegue!) {
        config.reset()
    }
    
    @IBAction func roll(sender: AnyObject!) {
        if config.sound {
            if player.playing { //preempt current audio
                player.pause()
                player.currentTime = 0
            }
            player.play()
        }
    }
    
}

