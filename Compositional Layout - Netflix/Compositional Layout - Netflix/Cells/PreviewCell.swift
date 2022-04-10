//
//  PreviewViewCell.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import UIKit

class PreviewCell: UICollectionViewCell, MovieCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    static let reuseIdentifier = String(describing: PreviewCell.self)
    
    var gradientAdded = false
    
    func showMovie(movie: Movie?) {
        image.makeRounded(borderColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
        if !gradientAdded {
            gradientAdded = true
            image.addGradient()
        }
        
        
        image.image = movie?.thumbnail
        title.text = movie?.title
    }
    
}
