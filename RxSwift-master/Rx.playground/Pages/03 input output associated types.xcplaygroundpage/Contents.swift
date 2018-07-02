import RxSwift
import Foundation

// Input & Output associatedtype
//
// https://medium.com/blablacar-tech/rxswift-mvvm-66827b8b3f10
//

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}

class MyViewModel: ViewModelType {
    struct Input {
        let query: Observable<String>
    }
    
    struct Output {
        let searchResults: Observable<[String]>
    }
    
    func transform(input: Input) -> Output {        
        let query = input.query
        
        return Output(searchResults: <#T##Observable<[String]>#>)
    }
    
}


class SampleClient {
    func search(query: String) -> Observable<[String]> {
        return Observable.just([])
    }
}
