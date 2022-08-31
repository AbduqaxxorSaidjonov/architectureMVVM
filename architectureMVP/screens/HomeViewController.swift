//
//  HomeViewController.swift
//  architectureMVP
//
//  Created by Abduqaxxor on 30/8/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var id = 20
    var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }

    
    func initViews(){
        
     //   viewModel.apiPostList()
     //   viewModel.apiPostSingle(id: id)
//        viewModel.apiPostCreate(post: Post(title: "PDP", body: "Academy"))
//        viewModel.apiPostDelete(post: Post(title: "PDP1", body: "Academy1"))
        viewModel.apiPostUpdate(post: Post(title: "PDP1", body: "Academy1"))
        
    }
}
