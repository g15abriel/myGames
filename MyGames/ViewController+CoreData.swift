//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by ICMMAC09-BF7F on 08/07/22.
//

import Foundation
import UIKit
import CoreData

extension UIViewController{
    
    var context: NSManagedObjectContext{
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
        
    }
    
}
