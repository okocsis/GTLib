
class Selection : Procedure {
    
    override init() {
        super.init()
    }
    
    override func _init() {}
    
    override func _do(current: Any?) {}
    
    func cond(item: Any?) -> Bool {
        assert(false, "Must be overridden!")
    }
    
    override func loopCond() -> Bool {
        return !cond(enor?.current())
    }
    
    func _elem() -> Any? {
        return enor?.current()
    }
}
