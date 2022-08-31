//
//  HomeViewModel.swift
//  architectureMVP
//
//  Created by Abduqaxxor on 31/8/22.
//

import Foundation
import Bond

class HomeViewModel{
    
    func apiPostList(){
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostSingle(id: Int){
        AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostCreate(post: Post) {
        AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(post: post), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostDelete(post: Post) {
        AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostUpdate(post: Post) {
        AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
}
