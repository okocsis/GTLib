

class Procedure<Item> {
    
    typealias Item = Item;
    
    var enor: Enumerator?;
    
    init() {
    }
    
    func _init() {}
    
    func first() {
        enor!.first();
    }
    
    func _do(current : Item?) {}
    
    func loopCond() -> Bool {
        return enor!.end() && whileCond(enor!.current());
    }
    
    func whileCond(item: Item?) -> Item {
        return true;
    }
    
    func addEnumerator(en: Enumerator) {
        enor = en;
    }
    
    func run() {
        if(enor != nil) {
            _init();
            for(first(); loopCond(); enor!.next()) {
                _do(enor!.current());
            }
        }
    }
    
}