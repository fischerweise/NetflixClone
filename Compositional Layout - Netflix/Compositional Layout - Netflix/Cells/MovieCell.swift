//
//  MovieCell.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import UIKit

protocol MovieCell: UICollectionViewCell {
    func showMovie(movie: Movie?)
}
