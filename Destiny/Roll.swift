import Foundation

//i'd like this to be a struct, but weird initialiser crash bugs prevent it
class Roll {
    let dice: Int[]
    
    init(_ d1: Int, _ d2: Int, _ d3: Int, _ d4: Int) {
        dice = [d1, d2, d3, d4]
    }
    
    convenience init() {
        self.init(
            Int(arc4random_uniform(3))-1,
            Int(arc4random_uniform(3))-1,
            Int(arc4random_uniform(3))-1,
            Int(arc4random_uniform(3))-1
        )
    }
    
    var value: Int {
        get {
            return dice.reduce(0) { $0 + $1 }
        }
    }
}