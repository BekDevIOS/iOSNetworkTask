//
//  ContentView.swift
//  iOSNetworkTask
//
//  Created by Utkirbek Mekhmonboev on 1/8/24.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    
    func apiPostList(){
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }})
    }
    
    func apiPostSingle(id: Int){
        AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }})
    }
    
    func apiPostCreate(post: Post){
        AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsEmpty(), handler: {response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }})
    }
    
    func apiPostUpdate(post:Post){
        AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostDelete(post: Post){
        AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    var body: some View {
        VStack {
            
            Text("Hello, world!")
        }.onAppear{
            //apiPostList()
            //apiPostSingle(id: 1)
            let post = Post(name: "Utkirbek", salary: "150k$", age: 25)
            //apiPostCreate(post: post)
            //apiPostUpdate(post: post)
            apiPostDelete(post: post)
        }
    }
}

#Preview {
    ContentView()
}
