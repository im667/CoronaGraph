//
//  View.swift
//  CoronaGraph
//
//  Created by mac on 2022/04/01.
//

import UIKit
import SnapKit

class MainView: UIView,BaseViewRepresentable {
    
    let caseLabel : UILabel = {
        let i = UILabel()
        i.textAlignment = .center
        i.text = "국내 확진자"
        i.sizeToFit()
       return i
    }()
    
    let countcaseLabel : UILabel = {
        let i = UILabel()
        i.textAlignment = .center
        i.text = "0000명"
        i.sizeToFit()
       return i
    }()
    
    
    let newCaseLabel : UILabel = {
        let i = UILabel()
        i.textAlignment = .center
        i.text = "국내 신규 확진자"
        i.sizeToFit()
       return i
    }()
    
    let countNewCaseLabel : UILabel = {
        let i = UILabel()
        i.textAlignment = .center
        i.text = "0000명"
        i.sizeToFit()
       return i
    }()
    
    let caseStackView : UIStackView = {
        let i = UIStackView()
        i.axis = .vertical
        i.alignment = .center
        i.distribution = .equalSpacing
        i.spacing = 12
        return i
    }()
    
    let newCaseStackView : UIStackView = {
        let i = UIStackView()
        i.axis = .vertical
        i.alignment = .center
        i.distribution = .equalSpacing
        i.spacing = 12
        return i
    }()
    
    let ContainerStackView : UIStackView = {
        let i = UIStackView()
        i.axis = .horizontal
        i.distribution = .fillEqually
        i.spacing = 16
        return i
    }()
    
    
    func setupView() {
        
        [caseLabel,countcaseLabel].forEach {
            caseStackView.addArrangedSubview($0)
        }
        
        [newCaseLabel,countNewCaseLabel].forEach {
            newCaseStackView.addArrangedSubview($0)
        }
        
        [caseStackView,newCaseStackView].forEach {
            ContainerStackView.addArrangedSubview($0)
        }
        
        self.addSubview(ContainerStackView)
        
    }
    
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupConstraints() {
        
        
        ContainerStackView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(16)
            make.height.equalTo(72)
        }
        
    }
    
    
    
}
