//
//  JsonTableView.swift
//  CleanTableView
//
//  Created by Onur Sapan on 16.05.2022.
//

import UIKit

protocol JsonTableViewProtocol {
    func update(items: [PostModel])
}

protocol JsonTableViewOutput: AnyObject {
    func onSelected(item: PostModel)
}


final class JsonTableView: NSObject {

    private lazy var items: [PostModel] = []
    weak var delegate: JsonTableViewOutput?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.onSelected(item: items[indexPath.row])
    }
    
}

extension JsonTableView: UITableViewDelegate, UITableViewDataSource { }
extension JsonTableView: JsonTableViewProtocol {
    func update(items: [PostModel]) {
        self.items = items
    }
   
}
