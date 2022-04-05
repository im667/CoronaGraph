//
//  ViewController.swift
//  CoronaGraph
//
//  Created by mac on 2022/04/01.
//

import UIKit
import SnapKit
import Charts

class MainViewController: UIViewController {

    let mainView = MainView()
   
    
    override func loadView() {
        self.view = mainView
        mainView.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


