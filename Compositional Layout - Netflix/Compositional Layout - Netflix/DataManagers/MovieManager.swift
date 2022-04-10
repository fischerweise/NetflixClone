//
//  MovieManager.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import Foundation


enum MovieManager {
    enum Section: String, CaseIterable {
        case Highlights = "Highlights"
        case preview = "Preview"
        case popular = "Popular"
        case anime = "Anime"
        case classic = "Classic"
        case documentaries = "Documentaries"
        case dramas = "Dramas"
        case music = "Music"
    }
    
    static var movies = [
        Section.Highlights: [
            Movie(title: "The Shining", headerImage: #imageLiteral(resourceName: "the-shining"), description: "Watch"),
            Movie(title: "The Lord Of The Rings", headerImage: #imageLiteral(resourceName: "lotr"), description: "Watch Movie"),
            Movie(title: "Eyes Wide Shut", headerImage: #imageLiteral(resourceName: "eyes-wide-shut"), description: "Watch Movie"),
            Movie(title: "Matrix", headerImage: #imageLiteral(resourceName: "matrix"), description: "Watch Movie")
        ],
        Section.preview: [
            Movie(title: "Avengers", headerImage: #imageLiteral(resourceName: "avengers"),thumbnail: #imageLiteral(resourceName: "avengers")),
            Movie(title: "Ölümlü Dünya", headerImage: #imageLiteral(resourceName: "olumlu dunya"), thumbnail: #imageLiteral(resourceName: "olumlu dunya")),
            Movie(title: "Hachiko A Dog's Tale", headerImage: #imageLiteral(resourceName: "hachiko"), thumbnail: #imageLiteral(resourceName: "hachiko")),
            Movie(title: "Prestige", headerImage: #imageLiteral(resourceName: "prestige"),thumbnail: #imageLiteral(resourceName: "prestige")),
            Movie(title: "Spider Man", headerImage: #imageLiteral(resourceName: "spider"), thumbnail: #imageLiteral(resourceName: "spider")),
            Movie(title: "Parasite", headerImage: #imageLiteral(resourceName: "parasite"),thumbnail: #imageLiteral(resourceName: "parasite")),
            Movie(title: "Back to The Future", headerImage: #imageLiteral(resourceName: "future"), thumbnail: #imageLiteral(resourceName: "future"))
        ],
        Section.popular: [
            Movie(title: "Interstaller", headerImage: #imageLiteral(resourceName: "interstaller"),thumbnail: #imageLiteral(resourceName: "interstaller")),
            Movie(title: "Star Wars", headerImage: #imageLiteral(resourceName: "starwars"), thumbnail: #imageLiteral(resourceName: "starwars")),
            Movie(title: "Inception", headerImage: #imageLiteral(resourceName: "inception"),thumbnail: #imageLiteral(resourceName: "inception")),
            Movie(title: "Fight Club", headerImage: #imageLiteral(resourceName: "fightclub"), thumbnail: #imageLiteral(resourceName: "fightclub")),
            Movie(title: "Pulp Fiction", headerImage: #imageLiteral(resourceName: "pulpfiction"), thumbnail: #imageLiteral(resourceName: "pulpfiction"))
        ],
        Section.anime: [
            Movie(title: "Kill Bill Vol.1", headerImage: #imageLiteral(resourceName: "killbill"),thumbnail: #imageLiteral(resourceName: "killbill")),
            Movie(title: "Schindler's List", headerImage: #imageLiteral(resourceName: "schindler"),thumbnail: #imageLiteral(resourceName: "schindler")),
            Movie(title: "Batman Dark Knight", headerImage: #imageLiteral(resourceName: "batman"), thumbnail: #imageLiteral(resourceName: "batman")),
            Movie(title: "Ölümlü Dünya", headerImage: #imageLiteral(resourceName: "olumlu dunya"), thumbnail: #imageLiteral(resourceName: "olumlu dunya")),
            Movie(title: "Hachiko A Dog's Tale", headerImage: #imageLiteral(resourceName: "hachiko"), thumbnail: #imageLiteral(resourceName: "hachiko"))
        ],
        Section.classic: [
            Movie(title: "Pulp Fiction", headerImage: #imageLiteral(resourceName: "pulpfiction"), thumbnail: #imageLiteral(resourceName: "pulpfiction")),
            Movie(title: "Avengers", headerImage: #imageLiteral(resourceName: "avengers"),thumbnail: #imageLiteral(resourceName: "avengers")),
            Movie(title: "Ölümlü Dünya", headerImage: #imageLiteral(resourceName: "olumlu dunya"), thumbnail: #imageLiteral(resourceName: "olumlu dunya")),
            Movie(title: "Hachiko A Dog's Tale", headerImage: #imageLiteral(resourceName: "hachiko"), thumbnail: #imageLiteral(resourceName: "hachiko")),
            Movie(title: "Interstaller", headerImage: #imageLiteral(resourceName: "interstaller"),thumbnail: #imageLiteral(resourceName: "interstaller")),
            Movie(title: "Pulp Fiction", headerImage: #imageLiteral(resourceName: "pulpfiction"), thumbnail: #imageLiteral(resourceName: "pulpfiction"))
        ],
        
        Section.documentaries: [
            Movie(title: "Kill Bill Vol.1", headerImage: #imageLiteral(resourceName: "killbill"),thumbnail: #imageLiteral(resourceName: "killbill")),
            Movie(title: "Schindler's List", headerImage: #imageLiteral(resourceName: "schindler"),thumbnail: #imageLiteral(resourceName: "schindler")),
            Movie(title: "Batman Dark Knight", headerImage: #imageLiteral(resourceName: "batman"), thumbnail: #imageLiteral(resourceName: "batman")),
            Movie(title: "Avengers", headerImage: #imageLiteral(resourceName: "avengers"),thumbnail: #imageLiteral(resourceName: "avengers")),
            Movie(title: "Ölümlü Dünya", headerImage: #imageLiteral(resourceName: "olumlu dunya"), thumbnail: #imageLiteral(resourceName: "olumlu dunya")),
            Movie(title: "Hachiko A Dog's Tale", headerImage: #imageLiteral(resourceName: "hachiko"), thumbnail: #imageLiteral(resourceName: "hachiko")),
            Movie(title: "Inception", headerImage: #imageLiteral(resourceName: "inception"),thumbnail: #imageLiteral(resourceName: "inception")),
            Movie(title: "Back to The Future", headerImage: #imageLiteral(resourceName: "future"), thumbnail: #imageLiteral(resourceName: "future"))
        ],
        
        Section.dramas: [
            Movie(title: "Schindler's List", headerImage: #imageLiteral(resourceName: "schindler"),thumbnail: #imageLiteral(resourceName: "schindler")),
            Movie(title: "Batman Dark Knight", headerImage: #imageLiteral(resourceName: "batman"), thumbnail: #imageLiteral(resourceName: "batman")),
            Movie(title: "Inception", headerImage: #imageLiteral(resourceName: "inception"),thumbnail: #imageLiteral(resourceName: "inception")),
            Movie(title: "Avengers", headerImage: #imageLiteral(resourceName: "avengers"),thumbnail: #imageLiteral(resourceName: "avengers")),
            Movie(title: "Ölümlü Dünya", headerImage: #imageLiteral(resourceName: "olumlu dunya"), thumbnail: #imageLiteral(resourceName: "olumlu dunya")),
            Movie(title: "Kill Bill Vol.1", headerImage: #imageLiteral(resourceName: "killbill"),thumbnail: #imageLiteral(resourceName: "killbill")),
            Movie(title: "Schindler's List", headerImage: #imageLiteral(resourceName: "schindler"),thumbnail: #imageLiteral(resourceName: "schindler")),
            Movie(title: "Batman Dark Knight", headerImage: #imageLiteral(resourceName: "batman"), thumbnail: #imageLiteral(resourceName: "batman")),
            Movie(title: "Hachiko A Dog's Tale", headerImage: #imageLiteral(resourceName: "hachiko"), thumbnail: #imageLiteral(resourceName: "hachiko")),
            Movie(title: "Spider Man", headerImage: #imageLiteral(resourceName: "spider"), thumbnail: #imageLiteral(resourceName: "spider")),
            Movie(title: "Parasite", headerImage: #imageLiteral(resourceName: "parasite"),thumbnail: #imageLiteral(resourceName: "parasite"))
        ],
        
        Section.music: [
            Movie(title: "Parasite", headerImage: #imageLiteral(resourceName: "parasite"),thumbnail: #imageLiteral(resourceName: "parasite")),
            Movie(title: "Back to The Future", headerImage: #imageLiteral(resourceName: "future"), thumbnail: #imageLiteral(resourceName: "future")),
            Movie(title: "Avengers", headerImage: #imageLiteral(resourceName: "avengers"),thumbnail: #imageLiteral(resourceName: "avengers")),
            Movie(title: "Ölümlü Dünya", headerImage: #imageLiteral(resourceName: "olumlu dunya"), thumbnail: #imageLiteral(resourceName: "olumlu dunya")),
            Movie(title: "Hachiko A Dog's Tale", headerImage: #imageLiteral(resourceName: "hachiko"), thumbnail: #imageLiteral(resourceName: "hachiko")),
            Movie(title: "Kill Bill Vol.1", headerImage: #imageLiteral(resourceName: "killbill"),thumbnail: #imageLiteral(resourceName: "killbill")),
            Movie(title: "Schindler's List", headerImage: #imageLiteral(resourceName: "schindler"),thumbnail: #imageLiteral(resourceName: "schindler")),
            Movie(title: "Batman Dark Knight", headerImage: #imageLiteral(resourceName: "batman"), thumbnail: #imageLiteral(resourceName: "batman"))
            ] 
        ]
}
