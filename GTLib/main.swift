//
//  main.swift
//  GTLib
//
//  Created by Kocsis Olivér on 06/10/14.
//  Copyright (c) 2014 artit. All rights reserved.
//

import Foundation

var myenum : MyEnumerator = MyEnumerator();
var mysumm : MySummation<Int,Int> = MySummation<Int,Int>();

mysumm.addEnumerator(myenum);

//println("\((mysumm.enor.array)");

mysumm.run();

println("res: \(mysumm.result())");

