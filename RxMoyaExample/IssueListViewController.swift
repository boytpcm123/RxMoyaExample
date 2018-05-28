//
//  ViewController.swift
//  RxMoyaExample
//
//  Created by ninjaKID on 5/25/18.
//  Copyright © 2018 ninjaKID. All rights reserved.
//

import Moya
import Moya_ModelMapper
import UIKit
import RxCocoa
import RxSwift


class IssueListViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    let disposeBag = DisposeBag()
    var provider: RxMoyaProvider<GitHub>!
    var lastestRepositoryName: Observable<String> {
        return searchBar
            .rx.text
            .orEmpty
            .debounce(0.5, scheduler: MainScheduler.instance)
            .distinctUntilChanged()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupRx()
    }

    func setupRx()  {
        // First part of the puzzle, create our Provider
        provider = RxMoyaProvider<GitHub>()
        
        // Here we tell table view that if user clicks on a cell,
        // and the keyboard is still visible, hide it
        tableView
            .rx.itemSelected
            .subscribe(onNext: { indexPath in
                if self.searchBar.isFirstResponder == true {
                    self.view.endEditing(true)
                }
            })
            .addDisposableTo(disposeBag)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

