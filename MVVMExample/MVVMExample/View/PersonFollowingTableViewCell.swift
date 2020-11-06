//
//  PersonFollowingTableViewCell.swift
//  MVVMExample
//
//  Created by 윤병일 on 2020/11/06.
//

import UIKit

class PersonFollowingTableViewCell : UITableViewCell {
  //MARK: - Properties
  static let identifier = "PersonFollowingTableViewCell"
  
  
  //MARK: - init
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    
  }
  
}
