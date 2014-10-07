
class Summation : Procedure {
    
    var _result : AnyObject?;
    
    override init() {}
    
    override func _init() {}
    
    override func _do(item: AnyObject?) {
        if(cond(item)) {
            add(item);
        }
    }
    
    func add(item: AnyObject?) {}
    
    func cond(item: AnyObject?) -> Bool {
        return true;
    }
    
    func result() -> AnyObject? {
        return _result;
    }
    
}