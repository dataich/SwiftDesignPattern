//
//  Singleton.swift
//  SwiftDesignPattern
//
//  Created by Taichiro Yoshida on 11/29/14.
//  Copyright (c) 2014 Taichiro Yoshida. All rights reserved.
//

public class Singleton {
  
  private init(){}
  
  public class var shared : Singleton {
    struct Shared {
      static let instance = Singleton()
    }
    return Shared.instance;
  }
}