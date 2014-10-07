import Foundation;

class MyEnumerator: Enumerator {
    var array = [1,2,3,4,5,6,7,8,9];
    var index = 0;
    
    func first() {
        index = 0;
    }
    
    func next() {
        index += 1;
    }
    
    func end() -> Bool {
        return index < array.count;
    }
    
    func current() -> AnyObject {
        return array[index];
    }
}