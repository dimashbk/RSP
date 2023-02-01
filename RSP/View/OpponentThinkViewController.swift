//
//  ViewController.swift
//  RSP
//
//  Created by Dinmukhamed on 01.02.2023.
//

import UIKit
import SnapKit
class OpponentThinkViewController: UIViewController {
    let myLabel = UILabel()

    let pickButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        initiatlize()
        // Do any additional setup after loading the view.
    }
    

    private func initiatlize(){
        view.backgroundColor = .white
        self.title = "Round #1"
        
        view.addSubview(myLabel)
        myLabel.text = "Your Opponent is Thinking"
        myLabel.textAlignment = .center
        myLabel.numberOfLines = 0
        myLabel.font = UIFont.boldSystemFont(ofSize: 54)
        myLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(92)
            make.left.right.equalToSuperview().inset(16)
        }
        
  
        
        view.addSubview(pickButton)
        pickButton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        pickButton.layer.cornerRadius = 48
        pickButton.setTitle("⏱", for: .normal)
        pickButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        pickButton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(342)
            make.top.equalToSuperview().inset(414)
            make.right.left.equalToSuperview().inset(24)
        }
        
        
    }

}
