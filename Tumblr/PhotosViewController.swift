//
//  PhotosViewController.swift
//  Tumblr
//
//  Created by John Doe on 18/04/18.
//  Copyright © 2018 iOS University. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    // The following line creates a property our PVC to store posts 
    var posts: [[String:Any]] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string:"https://api.tumblr.com/v2/blog/humansofnewyork.tumblr.com/posts/photo?api_key=NZjGN8BxDA4kffWIZcgtKOsXSkvJUW4wQ69wWpiTqUmsaWbXyp")!
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue:OperationQueue.main)
        let task = session.dataTask(with: url){ (data,response,error) in
        if let error = error {
            print(error.localizedDescription)
        }else if let data = data,
            let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]{
            print(dataDictionary)
        }
    }
         task.resume()
    }
   
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
