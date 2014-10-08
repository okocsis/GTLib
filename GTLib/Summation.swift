
class Summation: Procedure {
    
    var _result : Any?
    
    override init() {}
    
    override func _init() {}
    
    override func _do(item: Any?) {
        if(cond(item)) {
            add(item)
        }
    }
    
    func add(item: Any?) {
        assert(false, "Must be overridden!")
    }
    
    func cond(item: Any?) -> Bool {
        return true
    }
    
    func result() -> Any? {
        return _result
    }
    
}