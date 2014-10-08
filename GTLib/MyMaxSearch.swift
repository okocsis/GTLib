class MyMaxSearch: MaxSearch {

    init() {
        super.init({
            let a = $0 as Double,
                b = $1 as Double
            return a > b
        })
    }

    override func _func(item: Any?) -> Any {
        return Double(item as Int) * 0.5
    }

}