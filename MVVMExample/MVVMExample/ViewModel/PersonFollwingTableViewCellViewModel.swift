//
//  PersonFollwingTableViewCellViewModel.swift
//  MVVMExample
//
//  Created by 윤병일 on 2020/11/06.
//

import UIKit

struct PersonFollwingTableViewCellViewModel {
  let name : String
  let username : String
  let currentlyFollowing : Bool
  let image : UIImage?
  
  init(with model : Person) {
    name = model.name
    username = model.username
    currentlyFollowing = false
    image = UIImage(systemName: "person")
  }
}
