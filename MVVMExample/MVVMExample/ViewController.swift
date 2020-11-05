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
    table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    return table
  }()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavi()
    configureUI()
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
}

  //MARK: - UITableViewDataSource
extension ViewController : UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = "Hello World"
    return cell
  }
}

