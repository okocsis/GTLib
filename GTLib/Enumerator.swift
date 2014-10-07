

protocol Enumerator {
    typealias Item
    func first()
    func next()
    func end() -> Bool
    func current() -> Item;
}