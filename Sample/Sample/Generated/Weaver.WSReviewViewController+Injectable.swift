/// This file is generated by Weaver 0.9.12
/// DO NOT EDIT!
import Foundation
import WeaverDI
// MARK: - WSReviewViewController
final class WSReviewViewControllerDependencyContainer: DependencyContainer {
    let movieID: UInt
    init(parent: DependencyContainer? = nil, parentReferenceType: DependencyContainer.ReferenceType = .strong, movieID: UInt) {
        self.movieID = movieID
        super.init(parent, parentReferenceType: parentReferenceType)
    }
    override func registerDependencies(in store: DependencyStore) {
    }
}
@objc protocol WSReviewViewControllerDependencyResolver {
    var movieID: UInt { get }
    var reviewManager: ReviewManaging { get }
}
extension WSReviewViewControllerDependencyContainer: WSReviewViewControllerDependencyResolver {
    var reviewManager: ReviewManaging {
        return resolve(ReviewManaging.self, name: "reviewManager")
    }
}
extension WSReviewViewController {
    static func makeWSReviewViewController(injecting parentDependencies: DependencyContainer, movieID: UInt) -> WSReviewViewController {
        let dependencies = WSReviewViewControllerDependencyContainer(parent: parentDependencies, movieID: movieID)
        return WSReviewViewController(injecting: dependencies)
    }
}
protocol WSReviewViewControllerObjCDependencyInjectable {
    init(injecting dependencies: WSReviewViewControllerDependencyResolver)
}