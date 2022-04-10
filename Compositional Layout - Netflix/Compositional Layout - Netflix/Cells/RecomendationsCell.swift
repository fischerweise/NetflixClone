//
//  RecomendationsCell.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import UIKit

class RecomendationsCell: UICollectionViewCell, MovieCell {
    
    static let reuseIdentifier = String(describing: RecomendationsCell.self)
    
    @IBOutlet weak var movieImage: UIImageView!
    func showMovie(movie: Movie?) {
        movieImage.image = movie?.thumbnail
    }
    
    
}
