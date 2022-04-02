//
//  SubViewController.swift
//  CoronaGraph
//
//  Created by mac on 2022/04/01.
//

import UIKit
import SnapKit


class SubViewController : UIViewController {
 
    
    private var tableView = UITableView()
    
    
}



extension SubViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let chartsList = [
            "신규확진자","확진자","완치자","사망자","발생률","해외유입 신규확진자","지역발생 신규확진자"
        ]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as! MainTableViewCell

        
        return cell
    }
    
    
    
    
}
