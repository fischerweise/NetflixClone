//
//  HighlightCell.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import UIKit

class HighlightCell: UICollectionViewCell, MovieCell {
    static let reuseIdentifier = String(describing: HighlightCell.self)
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    func showMovie(movie: Movie?) {
        image.image = movie?.headerImage
        button.setTitle(movie?.description, for: .normal)
    }
}
