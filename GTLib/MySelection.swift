class MySelection : Selection {

    var what = 5

    override func cond(item: Any?) -> Bool {
        return what == item as Int
    }

}