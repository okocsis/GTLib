class MySummation: Summation {

    override func _init() {
        _result = 0
    }

    override func add(item: Any?) {
        let res = (_result as Int) + (item as Int)
        _result = res
    }

}