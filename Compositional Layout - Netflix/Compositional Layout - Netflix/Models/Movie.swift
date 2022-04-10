//
//  Movie.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import UIKit

struct Movie: Hashable {
    let title: String
    let headerImage: UIImage?
    let thumbnail: UIImage?
    let description: String?
    let identifier = UUID().uuidString
    
    init(title: String, headerImage: UIImage?, thumbnail: UIImage? = nil, description: String? = nil) {
        self.title = title
        self.headerImage = headerImage
        self.thumbnail = thumbnail
        self.description = description
    }
    
    func hash(int hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
