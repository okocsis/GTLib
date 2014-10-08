class MaxSearch: Procedure {

    var l = false,
        optelem : Any?,
        opt: Any?,
        compare: (Any?, Any?) -> Bool

    init(compare: (Any?, Any?) -> Bool) {
        self.compare = compare
    }

    override func _init() {
        l = false
    }

    func _func(item: Any?) -> Any {
        assert(false, "Must be overridden!")
    }

    func cond(item: Any?) -> Bool {
        return true
    }

    func found() -> Bool {
        return l
    }

    func _opt() -> Any? {
        return opt
    }

    func optElem() -> Any? {
        return optelem
    }

    override func _do(current: Any?) {
        let val = _func(current)
        if !cond(current) {
            return
        }
        if l {
            if(compare(val, opt)) {
                opt = val
                optelem = current
            }
        } else {
            l = true
            opt = val
            optelem = current
        }
    }

}