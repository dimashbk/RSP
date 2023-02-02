//
//  ViewController.swift
//  RSP
//
//  Created by Dinmukhamed on 01.02.2023.
//

import UIKit
import SnapKit
class PickViewController: UIViewController {
    let myLabel = UILabel()
    let scoreLabel = UILabel()
    let pickButton = UIButton()
    let changeButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        initiatlize()
        // Do any additional setup after loading the view.
    }
    

    private func initiatlize(){
        view.backgroundColor = .white
        self.title = "Round #1"
        
        view.addSubview(myLabel)
        myLabel.text = "Your Pick"
        myLabel.textAlignment = .center
        myLabel.font = UIFont.boldSystemFont(ofSize: 54)
        myLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(92)
            make.left.right.equalToSuperview().inset(16)
        }
        
        view.addSubview(scoreLabel)
        scoreLabel.text = "Score 0:0"
        scoreLabel.textAlignment = .center
        scoreLabel.textColor = UIColor(red: 0.404, green: 0.314, blue: 0.643, alpha: 1)
        scoreLabel.font = UIFont.boldSystemFont(ofSize: 17)
        scoreLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(160)
            make.left.right.equalToSuperview().inset(16)
        }
        
        
        view.addSubview(pickButton)
        pickButton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        pickButton.layer.cornerRadius = 48
        pickButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        pickButton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(342)
            make.top.equalToSuperview().inset(414)
            make.right.left.equalToSuperview().inset(24)
        }
        
        view.addSubview(changeButton)
        changeButton.setTitle("I changed my mind", for: .normal)
        changeButton.backgroundColor = UIColor(red: 0.404, green: 0.314, blue: 0.643, alpha: 1)
        changeButton.layer.cornerRadius = 8
        changeButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.top.equalToSuperview().inset(754)
            make.left.right.equalToSuperview().inset(16)
        }
        
        
    }

}
