//
//  ViewController.swift
//  Compositional Layout - Netflix
//
//  Created by Mustafa Pekdemir on 28.02.2022.
//

import UIKit

typealias MovieDataSource = UICollectionViewDiffableDataSource<MovieManager.Section, Movie>

class MovieFeedViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    private var dataSource: MovieDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private func setupView() {
        setNavigationBarImage()
        
        collectionView.register(TitleHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TitleHeaderView.reuseIdentifier)
        
        setNavigationBarImage()
        //Configuring Collection View
        collectionView.collectionViewLayout = configureCollectionViewLayout()
        //Configuring Data Source
        configureDataSource()
        //Configuring Snapshot
        configureSnapshot()
        self.navigationController?.hidesBarsOnSwipe = true
        
        collectionView.delegate = self
        
        
    }
    
    private func setNavigationBarImage() {
        let logo = UIImage(named: "netflix-logo")
        
        let imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }

}
// MARK: - Collection View -

extension MovieFeedViewController {
    func configureCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let sectionProvider = {
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            var section: NSCollectionLayoutSection?
            
            switch sectionIndex {
            case 0:
               section = self.getHighlightSection()
            case 1:
                section = self.getPreviewSection()
            default:
                section =  self.getPreviewSection()
            }
            return section
        }
        
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func getHighlightSection() -> NSCollectionLayoutSection {
        //Creating Items
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        //Creating Groups
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.4))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //Creating Sections
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        return section
    }
    
    private func getPreviewSection() -> NSCollectionLayoutSection {
        //Creating Items
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        //Creating Groups
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .fractionalHeight(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //Creating Sections
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        section.boundarySupplementaryItems = getHeader()
        return section
    }
    
    private func getRecommendationSection() -> NSCollectionLayoutSection {
        //Creating Items
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        
        //Creating Groups
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .fractionalHeight(0.22))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //Creating Sections
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        section.boundarySupplementaryItems = getHeader()
        return section
    }
    
    private func getHeader() -> [NSCollectionLayoutBoundarySupplementaryItem] {
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(44))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topLeading)
        return [sectionHeader]
    }
}

// - MARK: - Diffable Data Source -

extension MovieFeedViewController {
    func configureDataSource() {
        dataSource = MovieDataSource(collectionView: collectionView) {
        (collectionView: UICollectionView, indexPath: IndexPath, movie: Movie) -> UICollectionViewCell? in
            let reuseIdentifier: String
            switch indexPath.section {
                case 0: reuseIdentifier = HighlightCell.reuseIdentifier
                case 1: reuseIdentifier = PreviewCell.reuseIdentifier
                case 2: reuseIdentifier = RecomendationsCell.reuseIdentifier
                default: reuseIdentifier = RecomendationsCell.reuseIdentifier
            }
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? MovieCell else {
                return nil
            }
            let section = MovieManager.Section.allCases[indexPath.section]
            cell.showMovie(movie: MovieManager.movies[section]?[indexPath.item])
            return cell
        }
        dataSource.supplementaryViewProvider = {
            [weak self] (collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? in
            if let self = self, let headerSupplementaryView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TitleHeaderView.reuseIdentifier, for: indexPath) as? TitleHeaderView {
                let section = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
                headerSupplementaryView.textLabel.text = section.rawValue
                
                return headerSupplementaryView
            }
            return nil
        }
    }
    
    func configureSnapshot() {
        var currentSnapshot = NSDiffableDataSourceSnapshot<MovieManager.Section, Movie> ()
        MovieManager.Section.allCases.forEach { collection in
            currentSnapshot.appendSections([collection])
            if let movies = MovieManager.movies[collection] {
                currentSnapshot.appendItems(movies)
            }
        }
        dataSource.apply(currentSnapshot, animatingDifferences: false)
    }
    
}
// MARK: - UICollectionViewDelegat -

extension MovieFeedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let movie = dataSource.itemIdentifier(for: indexPath)
        print(movie?.title ?? "Movie Title is Nil.")
    }
}
