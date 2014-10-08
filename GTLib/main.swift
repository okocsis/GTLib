var myEnum = MyEnumerator(),
    mySumm = MySummation(),
    count = Counting(),
    myLinS = MyLinSearch(),
    mySelect = MySelection(),
    myMaxS = MyMaxSearch()

mySumm.addEnumerator(myEnum)
count.addEnumerator(myEnum)
myLinS.addEnumerator(myEnum)
mySelect.addEnumerator(myEnum)
myMaxS.addEnumerator(myEnum)

mySumm.run()

count.run()

myLinS.run()

myMaxS.run()

/** WARN: mySelect._elem() holds the CURRENT value of enumerator **/
mySelect.run()

println("array: \(myEnum.array)")
println("mySumm: \(mySumm.result())")
println("count: \(count.result())")
println("myLinS: found? \(myLinS.found()) \(myLinS._elem())")
println("mySelect: \(mySelect._elem())")
println("myMaxS: found? \(myMaxS.found()) \(myMaxS._opt()) \(myMaxS.optElem())")
