//
//  BookTellCollectionViewDataSourceCollectionViewController.swift
//  ExamenDemo
//
//  Created by Antonio Bedolla on 19/06/23.
//

import Foundation
import UIKit

class BookTellCollectionViewDataSourceCollectionViewController: UICollectionViewDataSource {
    
    var listBook:[String]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listBook.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath)
        let booksTestColl = listBook[indexPath.row]
        //let booksTestColl2 = BookTestColl2[indexPath.row]
        
        
        return cell
    }
    
   
}
