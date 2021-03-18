//
//  OrangeViewController.swift
//  EnterWithNotifications
//
//  Created by Kyungmin Lee on 2021/03/18.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, Error in
            print(didAllow)
        })
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let content = UNMutableNotificationContent()
        content.title = "This is title : Jacob"
        content.subtitle = "This is Subtitle : 노티피케이션 튜토리얼"
        content.body = "This is body : 바디다바디바"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "timerdone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
