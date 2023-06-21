//
//  ViewController.swift
//  ExamenDemo
//
//  Created by Antonio Bedolla on 19/06/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    

    @IBOutlet weak var testCollCollectionView: UICollectionView!
    //@IBOutlet weak var testColl2CollectionView: UICollectionView!
    
    
    //Se declaran los arreglos para los CollectionView
    /*let BookTestColl = [
        Book(imageBook: "Book_1"),
        Book(imageBook: "Book_2"),
        Book(imageBook: "Book_3")
    ]*/
    
    let BookTestColl = [
        "Book_1",
        "Book_2",
        "Book_3"
    ]
    
    let BookTestColl2 = [
        Book(imageBook: "Book_4"),
        Book(imageBook: "Book_5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerCollectionViewCells()
        testCollCollectionView.delegate = self
        //testColl2CollectionView.delegate = self
        testCollCollectionView.dataSource = self
        //testColl2CollectionView.dataSource = self
        testCollCollectionView.showsHorizontalScrollIndicator = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(BookTestColl.count)
       return BookTestColl.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookTestCollCellCollectionViewCell", for: indexPath) as? BookTestCollCellCollectionViewCell else { return UICollectionViewCell()}
        //guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(BookTestCollCellCollectionViewCell.self), for: indexPath) as? BookTestCollCellCollectionViewCell
                //else { return UICollectionViewCell() }
        
        let item = BookTestColl[indexPath.row]
            //let booksTestColl2 = BookTestColl2[indexPath.row]
        //cell.backgroundColor = .red
        cell.bookImage2(bookModel: item)
        //cell.imageView.image = UIImage(systemName: "pencil")
        //cell.myImageView.image = UIImage(named: "trash" )
        cell.layoutMargins = UIEdgeInsets.zero
        return cell
        
    }
    
    private func registerCollectionViewCells(){
        testCollCollectionView.register(BookTestCollCellCollectionViewCell.self, forCellWithReuseIdentifier: "BookTestCollCellCollectionViewCell")
        
        //self.testCollCollectionView.register(UINib(nibName: String(describing: BookTestCollCellCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: NSStringFromClass(BookTestCollCellCollectionViewCell.self))

    }


}

