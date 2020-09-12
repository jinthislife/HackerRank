import UIKit

protocol Session {
    func execute()
}

extension Session {
    func execute() {
        print("execute builtin!")
    }
}

class ViewModel {

//    var session: Session!
    func fetch(from session: Session) {
        session.execute()
    }
}

class realSession: Session {
    
}

class mockSession: Session {
    func execute() {
        print("excute MockSession")
    }
}

let sut = ViewModel()
let realS = realSession()
let mockS = mockSession()
sut.fetch(from: realS)
sut.fetch(from: mockS)


