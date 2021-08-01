//
//  ViewController.swift
//  NJRealtorExam
//
//  Created by user on 8/1/21.
//

import Foundation
import UIKit

class ViewControler: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let data = LoadJsonData().examData
        print(data)
        
    }
}
