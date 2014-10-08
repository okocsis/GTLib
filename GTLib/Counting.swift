class Counting: Summation {
    
    override func _init() {
        _result = 0
    }
    
    override func add(item: Any?) {
        let res = _result as Int + 1
        _result = res
    }
    
}