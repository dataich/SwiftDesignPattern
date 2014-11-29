//
//  JobGroup.swift
//  SwiftDesignPattern
//
//  Created by Taichiro Yoshida on 11/29/14.
//  Copyright (c) 2014 Taichiro Yoshida. All rights reserved.
//

public class JobGroup:JobComponent {
  lazy var jobs:[JobComponent] = []
  
  init(jobs:JobComponent...) {
    self.jobs = jobs
  }
  
  func run() -> String {
    var result = ""
    for job in jobs {
      result += job.run()
    }
    
    return result
  }
}
