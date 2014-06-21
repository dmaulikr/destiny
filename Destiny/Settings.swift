import Foundation

class Settings {
    let defaults: NSUserDefaults
    
    var sound: Bool = false
    
    init() {
        defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.registerDefaults([
            "com.bananasoft.destiny.sound": sound
        ])
        
        reset()
    }
    
    func reset() {
        sound = defaults.boolForKey("com.bananasoft.destiny.sound")
    }
    
    func save() {
        defaults.setBool(sound, forKey: "com.bananasoft.destiny.sound")
        
        defaults.synchronize()
    }
}
