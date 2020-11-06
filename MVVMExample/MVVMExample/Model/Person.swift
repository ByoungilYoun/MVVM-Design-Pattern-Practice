//
//  Person.swift
//  MVVMExample
//
//  Created by 윤병일 on 2020/11/05.
//

import UIKit

enum Gender {
  case male, female, unspecified
}

struct Person {
  let name : String
  let birthdate : Data?
  let middleName : String?
  let address : String?
  let gender : Gender
  
  init(name : String,
       birthdate : Data? = nil,
       middleName : String? = nil,
       address : String? = nil,
       gender : Gender = .unspecified) {
    self.name = name
    self.birthdate = birthdate
    self.middleName = middleName
    self.address = address
    self.gender = gender
    
  }
}

