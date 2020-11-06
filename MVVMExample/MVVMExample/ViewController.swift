//
//  ViewController.swift
//  MVVMExample
//
//  Created by 윤병일 on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {

  //MARK: - Properties
  private let tableView : UITableView = {
    let table = UITableView()
    table.register(PersonFollowingTableViewCell.self, forCellReuseIdentifier: PersonFollowingTableViewCell.identifier)
    return table
  }()
  
  private var models = [Person]()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavi()
    configureUI()
    configureModels()
  }
  
  //MARK: - setNavi()
  private func setNavi() {
    navigationItem.title = "Home"
  }
  
  //MARK: - configureUI()
  private func configureUI() {
    view.addSubview(tableView)
    tableView.dataSource = self
    tableView.frame = view.bounds
  }
  
  //MARK: - configureModels()
  private func configureModels() {
    let names = ["Joe", "Dan", "Jeff", "Jenny", "Emily"]
    
    for name in names {
      models.append(Person(name: name))
    }
  }
}

  //MARK: - UITableViewDataSource
extension ViewController : UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return models.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let model = models[indexPath.row]
    
   guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonFollowingTableViewCell.identifier, for: indexPath) as? PersonFollowingTableViewCell else {
      return UITableViewCell()
    }
    cell.configure(with: PersonFollwingTableViewCellViewModel(with : model))
    cell.delegate = self
    return cell
  }
}

extension ViewController : PersonFollowingTableViewCellDelegate {
  func personFollowingTableViewCell(_ cell: PersonFollowingTableViewCell, didTapWith viewModel: PersonFollwingTableViewCellViewModel) {

  }
}
