//
//  NotificationController.swift
//  randomTimer WatchKit Extension
//
//  Created by Екатерина Чернова on 20.06.2022.
//

import WatchKit
import SwiftUI
import UserNotifications

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    var title = ""
    var subTitle = ""
    var imageURL = ""
    
    override var body: NotificationView {
        return NotificationView(title: title, subTitle: subTitle, imageURL: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/9e9b58e8419738615ad29619dd7a6af1.jpeg/s/s1200x/a/84944/sc/125")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        let notificationData = notification.request.content.userInfo as? [String: Any]
        let apn = notificationData?["apn"] as? [String: Any]
        let body = apn?["alert"] as? [String: Any]
        
        title = body?["title"] as? String ?? ""
        subTitle = body?["subtitle"] as? String ?? ""
        imageURL = notificationData?["customURL"] as? String ?? ""
        
    }
}
