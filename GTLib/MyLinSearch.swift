class MyLinSearch : LinSearch {

    var what = 4

    override func cond(item: Any?) -> Bool {
        return what == item as Int
    }

}