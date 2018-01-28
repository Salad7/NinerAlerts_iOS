//
//  BroadcastViewController.swift
//  NinerAlerts
//
//  Created by cci-loaner on 1/26/18.
//  Copyright © 2018 cci-loaner. All rights reserved.
//

import UIKit

class BroadcastViewController: UIViewController {
    @IBAction func send(_ sender: UIButton) {
        print("Sending broadcast")
        let event = Event()
        event.detail = "It's Mohamed!"
        event.location = "Woodward 135"
        let json: [String: Any] = ["detail": event.detail,"location": event.location]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        let url = URL(string: "https://howl-1500184828516.firebaseapp.com/postEvent")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        // insert json data to the request
        request.httpBody = jsonData
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
            print("Data: "+String(describing: response))
        }
        
        task.resume()

    }
    @IBOutlet weak var details: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBAction func cancel(_ sender: UIBarButtonItem) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
