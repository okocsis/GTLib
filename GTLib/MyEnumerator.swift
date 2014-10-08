class MyEnumerator: Enumerator {

    var array = [8,2,7,3,6,5,4,1,9],
        index = 0

    func first() {
        index = 0
    }

    func next() {
        index += 1
    }

    func end() -> Bool {
        return index < array.count
    }

    func current() -> Any {
        return array[index]
    }

}