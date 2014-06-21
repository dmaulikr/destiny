import UIKit
import AVFoundation

@objc(RootViewController) class RootViewController: UIViewController, AVAudioPlayerDelegate {
    
    let config: Settings
    let queue: dispatch_queue_t
    let audio_finished: dispatch_semaphore_t
    let player: AVAudioPlayer
    
    @IBOutlet var diceView: DiceViewController
    
    init(coder: NSCoder?) {
        config = Settings()
        
        queue = dispatch_queue_create("audio", nil)
        audio_finished = dispatch_semaphore_create(0)
        
        let soundPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("dice", ofType: "wav"))
        player = AVAudioPlayer(contentsOfURL: soundPath, error: nil)
        player.volume = 1.0
        
        super.init(coder: coder)
        
        player.delegate = self
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
        if (config.sound) {
            dispatch_async(queue) {
                self.player.play()
                dispatch_semaphore_wait(self.audio_finished, DISPATCH_TIME_FOREVER)
            }
        }
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        dispatch_semaphore_signal(audio_finished)
    }
    
}

