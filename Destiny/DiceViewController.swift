//
//  DiceDataSource.swift
//  Destiny
//
//  Created by Thomas Castiglione on 21/06/2014.
//  Copyright (c) 2014 Thomas Castiglione. All rights reserved.
//

import UIKit

class DiceViewController: NSObject, UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView!, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        return collectionView.dequeueReusableCellWithReuseIdentifier("die", forIndexPath: indexPath) as UICollectionViewCell
    }

}
