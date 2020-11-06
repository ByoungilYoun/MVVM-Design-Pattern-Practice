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
  
  private let userImageView : UIImageView = {
    let imageView = UIImageView()
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFit
    return imageView
  }()
  
  private let nameLabel : UILabel = {
    let label = UILabel()
    label.textColor = .label
    return label
  }()
  
  private let usernameLabel : UILabel = {
    let label = UILabel()
    label.textColor = .secondaryLabel
    return label
  }()
  
  private let button : UIButton = {
    let button = UIButton()
    return button
  }()
  //MARK: - init
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  
    contentView.addSubview(userImageView)
    contentView.addSubview(nameLabel)
    contentView.addSubview(usernameLabel)
    contentView.addSubview(button)
    contentView.clipsToBounds = true
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func configure(with viewModel : PersonFollwingTableViewCellViewModel) {
    nameLabel.text = viewModel.name
    usernameLabel.text = viewModel.username
    userImageView.image = viewModel.image
    
    if viewModel.currentlyFollowing {
      button.setTitle("Unfollow", for: .normal)
      button.setTitleColor(.blue, for: .normal)
      button.layer.borderWidth = 1
      button.layer.borderColor = UIColor.black.cgColor
    } else {
      button.setTitle("Follow", for: .normal)
      button.setTitleColor(.white, for: .normal)
      button.backgroundColor = .link
    }
  }
  
  
  override func layoutSubviews() {
    let imageWidth = contentView.frame.size.height - 10
    
    userImageView.frame = CGRect(x: 5, y: 5, width: imageWidth, height: imageWidth)
    nameLabel.frame = CGRect(x: imageWidth + 10, y: 0, width: contentView.frame.size.width - imageWidth, height: contentView.frame.size.height / 2)
    
    usernameLabel.frame = CGRect(x: imageWidth + 10, y: contentView.frame.size.height / 2 , width: contentView.frame.size.width - imageWidth, height: contentView.frame.size.height / 2 )
    
    button.frame = CGRect(x: contentView.frame.size.width - 120, y: 10, width: 110, height: contentView.frame.size.height - 20)
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    
  }
  
}
