class Procedure {

    var enor: Enumerator?

    init() {}

    func _init() {
        assert(false, "Must be overridden!")
    }

    func first() {
        enor!.first();
    }

    func _do(current : Any?) {
        assert(false, "Must be overridden!")
    }

    func loopCond() -> Bool {
        return enor!.end() && whileCond(enor!.current())
    }

    func whileCond(item: Any?) -> Bool {
        return true
    }

    func addEnumerator(en: Enumerator) {
        enor = en
    }

    func run() {
        if(enor == nil) {
            assert(false, "Missing enumerator!")
        }
        _init()
        for(first(); loopCond(); enor!.next()) {
            _do(enor!.current())
        }
    }

}