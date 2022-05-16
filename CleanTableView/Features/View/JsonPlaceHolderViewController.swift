//
//  JsonPlaceHolderViewController.swift
//  CleanTableView
//
//  Created by Onur Sapan on 16.05.2022.
//

import UIKit

class JsonPlaceHolderViewController: UIViewController {
    
    @IBOutlet weak var tableViewJsonPlaceHolder: UITableView!
    
    private let jsonTableView: JsonTableView = JsonTableView()
    private let jsonService: JsonPlaceHolderProtocol = JsonPlaceHolderService() 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewJsonPlaceHolder.delegate = jsonTableView
        tableViewJsonPlaceHolder.dataSource = jsonTableView
        jsonTableView.delegate = self
    }

}

extension JsonPlaceHolderViewController: JsonTableViewOutput {
    func onSelected(item: PostModel) {
        print(item.body ?? "")
        
    }
    
    
    
}


