import RxSwift
import Foundation

final class Client {
    func search(query: String) -> Observable<[String]> { return Observable.just([]) }
}

final class MaViewModel {
    private let client = Client()
    
    private (set) var search: (String) -> Void = { _ in}
    
    let searchResults: Observable<[String]>
    
    init() {
        let bs = BehaviorSubject<[String]>(value: [])
        searchResults = bs
        
        search = { [unowned self] query in
            self.client.search(query: query)
                .subscribe(bs)
        }
    }
}
