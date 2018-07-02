import RxSwift
import Foundation


// Input & Output Protocols Example (Kickstarter)
//
// nice namespacing for setting up bindings - clarity around usage
// downsides: - outsiders can still access inputs and outputs
//            - extra setup, but could be easy with a code snippet

protocol MyViewModelInputs {
    func search(query: String)
    
    // Kickstarter even includes life cycle events as inputs ↓
    
    // func viewDidLoad()
    // func viewWillAppear(animated: Bool)
    // func searchFieldDidBeginEditing()
    // func clearSearchText()
}

protocol MyViewModelOutputs {
    var searchResults: Observable<[String]> { get }
    
    // Kickstarter includes actions as outputs ↓
    
    /// Emits when the search field should resign focus.
    // var resignFirstResponder: Signal<(), NoError> { get }
    
    /// Emits when should scroll to project with row number.
    // var scrollToRow: Signal<Int, NoError> { get }
}

protocol MyViewModelType {
    var inputs: MyViewModelInputs { get }
    var outputs: MyViewModelOutputs { get }
}

final class MyViewModel: MyViewModelType, MyViewModelInputs, MyViewModelOutputs {
    var input: MyViewModelInputs { return self }
    var output: MyViewModelOutputs { return self }
    
    var searchResults: Observable<[String]>
    
    func search(query: String) {
        // perform search
    }
}
