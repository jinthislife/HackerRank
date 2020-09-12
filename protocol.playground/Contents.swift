import UIKit

protocol A {
    func f() -> String
}

extension A {
    func f() -> String { return "AAAA" }
}

class B: A {}

class C: B {
    func f() -> String { return "CCCC" }
}

let a: A = C()
let b: B = C()
let c: C = C()

a.f() // "AAAA" - why?
b.f() // "AAAA" - why?
c.f() // "CCCC"

protocol CacheProtocol {
    associatedtype Value

    func cache(_ value: Value, key: String)
    func value(for key: String) -> Value?
}
class Cache {}
extension Cache: CacheProtocol {}
