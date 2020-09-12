import UIKit

protocol Session {
    
}

class URLSession: Session {}
class TestSession: Session {}

class ViewModel {
    var session: Session

    init(session: Session = URLSession()) {
        self.session = session
    }
    
    func fetch() {
        TwitterAPI().execute(using: session)
    }
}

class TwitterAPI {
    func execute(using: Session) {}
}


let urlSession = URLSession()
let testSession = TestSession()
var productionVM = ViewModel(session: urlSession)
var testVM = ViewModel(session: testSession)
