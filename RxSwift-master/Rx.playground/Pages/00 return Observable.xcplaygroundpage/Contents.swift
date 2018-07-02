import RxSwift
import Foundation

// would this work tied to a UITableView
// could we just swap out the table's data source for every change in the query

// would this be a case for a factory (Observable.deferred)

final class ViewModel {
    func search(query: String) -> Observable<[String]> {
        return Observable.just([])
    }
}
