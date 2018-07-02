import RxSwift
import Foundation

// Computed Property Example
//
// a type(Observerable) with a fileprivate onNext function
// downside: we would have to do this in every view model's file

class Observerable<T> {
    fileprivate func onNext(_ n: T) {}
    func subscribe() {}
}

class ViewModelWithFileprivateObserver {
    let searchResults = Observerable<[String]>()
    
    func search(query: String) {
        // perform search then...
            searchResults.onNext([])
    }
}
