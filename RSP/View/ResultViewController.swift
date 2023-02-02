//
//  ViewController.swift
//  RSP
//
//  Created by Dinmukhamed on 01.02.2023.
//

import UIKit
import SnapKit
class ResultViewController: UIViewController {
    let tieLabel = UILabel()
    let scoreLabel = UILabel()
    let firstPickButton = UIButton()
    let secondPickButton = UIButton()
override func viewDidLoad() {
        super.viewDidLoad()
        initiatlize()
        // Do any additional setup after loading the view.
    }
    

    private func initiatlize(){
        view.backgroundColor = .white
        self.title = "Round #1"
        
        view.addSubview(tieLabel)
        tieLabel.text = "Tie!"
        tieLabel.textAlignment = .center
        tieLabel.font = UIFont.boldSystemFont(ofSize: 54)
        tieLabel.snp.makeConstraints { make in
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
        
        
        view.addSubview(firstPickButton)
        firstPickButton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        firstPickButton.layer.cornerRadius = 48
        firstPickButton.setTitle("✂", for: .normal)
        firstPickButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        firstPickButton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(198)
            make.top.equalToSuperview().inset(322)
            make.left.equalToSuperview().inset(24)
           
        }
        view.addSubview(secondPickButton)
        secondPickButton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        secondPickButton.layer.cornerRadius = 48
        secondPickButton.setTitle("✂", for: .normal)
        secondPickButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        secondPickButton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(190)
            make.top.equalToSuperview().inset(402)
            make.right.equalToSuperview().inset(42)
        }
        
        let stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -10, dy: -10)
        stroke.center = view.center
        view.addSubview(stroke)
        stroke.layer.cornerRadius = 58
        view.bounds = view.bounds.insetBy(dx: -10, dy: -10)
        stroke.layer.borderWidth = 10
        stroke.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        secondPickButton.addSubview(stroke)
    }

}
