import UIKit
import AVFoundation

@objc(RootViewController) class RootViewController: UIViewController {
    
    let config: Settings
    let player: AVAudioPlayer
    
    var diceCollection: DiceCollectionViewController!
    
    var currentRoll: Roll
    
    init(coder: NSCoder?) {
        config = Settings()
        
        let soundPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("dice", ofType: "wav"))
        player = AVAudioPlayer(contentsOfURL: soundPath, error: nil)
        player.prepareToPlay() //prevent audio lag
        
        currentRoll = Roll(0,0,0,0)
        
        super.init(coder: coder)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        switch segue?.identifier {
        case .Some("embed"):
            diceCollection = segue!.destinationViewController as DiceCollectionViewController
            diceCollection.display(currentRoll)
        default:
            return
        }
    }
    
    @IBAction func settingsDone(segue: UIStoryboardSegue!) {
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
        
        currentRoll = Roll()
        diceCollection.display(currentRoll)
    }
    
}

