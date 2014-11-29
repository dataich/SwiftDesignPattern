//
//  SwiftDesignPatternTests.swift
//  SwiftDesignPatternTests
//
//  Created by Taichiro Yoshida on 11/29/14.
//  Copyright (c) 2014 Taichiro Yoshida. All rights reserved.
//

import Cocoa
import XCTest

class SwiftDesignPatternTests: XCTestCase {
  
  func testSingleton() {
    // let instance = Singleton() //cannot call init()
    
    let instance1 = Singleton.shared
    let instance2 = Singleton.shared
    XCTAssertTrue(instance1 === instance2, "instance1 === instance2")
  }
}
