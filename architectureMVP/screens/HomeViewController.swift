//
//  HomeViewController.swift
//  architectureMVP
//
//  Created by Abduqaxxor on 30/8/22.
//

import UIKit

class HomeViewController: UIViewController, HomeView {
    
    var presenter: HomePresenter!
    var id = 20
 
    
    func onLoadPosts(posts: [Post]) {
        if posts.count > 0 {
            print(posts.count)
        }else{
            //error
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }

    
    func initViews(){
        presenter = HomePresenter()
        presenter.homeView = self
        presenter.apiPostList()
        presenter.apiPostSingle(id: id)
        presenter.apiPostCreate(post: Post(title: "PDP", body: "Academy"))
        presenter.apiPostDelete(post: Post(title: "PDP1", body: "Academy1"))
        presenter.apiPostUpdate(post: Post(title: "PDP1", body: "Academy1"))
        
    }
}
