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
  
  func testComposite() {
    let job1 = Job()
    let job2 = Job()
    
    XCTAssertEqual(job1.run(), "Run Job", "")
    XCTAssertEqual(job2.run(), "Run Job", "")
    
    let jobGroup1 = JobGroup(jobs:job1, job2)
    let jobGroup2 = JobGroup(jobs:job1, job2)
    
    XCTAssertEqual(jobGroup1.run(), "Run JobRun Job", "")
    XCTAssertEqual(jobGroup2.run(), "Run JobRun Job", "")
    
    let jobGroup3 = JobGroup(jobs:jobGroup1, jobGroup2)
    XCTAssertEqual(jobGroup3.run(), "Run JobRun JobRun JobRun Job", "")
  }
}
