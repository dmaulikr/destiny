import UIKit

class DiceCollectionViewController: UICollectionViewController {
    
    override func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        return collectionView.dequeueReusableCellWithReuseIdentifier("die", forIndexPath: indexPath) as UICollectionViewCell
    }
    
    func display(roll: Roll) {
    }

}
