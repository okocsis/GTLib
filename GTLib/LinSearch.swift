class LinSearch : Procedure {

    var l = false,
        optimist = false,
        elem : Any?

    override init() {
        super.init()
    }

    override func _init() {
        l = false
    }

    init(optimist : Bool) {
        l = optimist
        self.optimist = optimist
    }

    override func _do(current: Any?) {
        elem = current
        l = cond(elem)
    }

    func cond(item: Any?) -> Bool {
        assert(false, "Must be overridden!")
    }

    override func loopCond() -> Bool {
        let lcond = super.loopCond();
        return (optimist ? l : !l) && lcond
    }

    func found() -> Bool {
        return l
    }

    func _elem() -> Any? {
        return elem
    }

}