//
//  MainTableViewCell.swift
//  CoronaGraph
//
//  Created by mac on 2022/04/01.
//

import UIKit
import SnapKit


class MainTableViewCell:UITableViewCell {
    
    static let identifier = "MainTableViewCell"
    
    let listNameLabel : UILabel = {
       let i = UILabel()
        i.text = "TEST"
        i.sizeToFit()
        return i
    }()
    let countLabel : UILabel = {
        let i = UILabel()
        i.text = "000"
        i.sizeToFit()
         return i
     }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: "MainTableViewCell")
        
        loadLayout()
    }
        
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
    }
    
    func loadLayout() {
        listNameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(16)
        }
        countLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().inset(16)
        }
    }
}
