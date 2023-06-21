//
//  BookTestCollCellCollectionViewCell.swift
//  ExamenDemo
//
//  Created by Antonio Bedolla on 19/06/23.
//

import UIKit

class BookTestCollCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelTest: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    /*
    func bookImage(bookModel: Book) {
        
        //guard let booksModel = bookModel else {return}
        imageView.image = UIImage(named: booksModel.imageBook)
        
        print("Esto trae: " , UIImage(named: booksModel.imageBook)!)
        
        /*
        if let  image = UIImage(named: bookModel.imageBook) {
            imageView.image = image

        }*/
    }*/
    
    func bookImage2(bookModel: String) {
        print("se imprime nombre de imagen: ", bookModel)
        
        if bookModel != "" {
           /* if let image = imageView {
                
            } else{
                self.imageView.image = UIImage(systemName: "pencil")
            }*/
        }
        
        //imageView.image = UIImage(named: bookModel)
                
        /*
        if let  image = UIImage(named: bookModel.imageBook) {
            imageView.image = image

        }*/
    }
     

}
