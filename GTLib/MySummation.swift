import Foundation

class MySummation<Dummy1,Dummy2>: Summation<Int,Int> {
    
    override func _init() {
        _result = 0;
    }
    
    override func add(item: Int?) {
        _result! += item!;
    }
    
    override func cond(item: Int?) -> Bool {
        return true;
    }
    
    override func result() -> Int? {
        return _result;
    }
}