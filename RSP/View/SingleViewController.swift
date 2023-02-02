//
//  SingleViewController.swift
//  RSP
//
//  Created by Dinmukhamed on 01.02.2023.
//

import UIKit
import SnapKit
class SingleViewController: UIViewController {
    let myLabel = UILabel()
    let scoreLabel = UILabel()
    let paperBotton = UIButton()
    let scissorsButton = UIButton()
    let rockButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        initiatlize()
        // Do any additional setup after loading the view.
    }
    

    private func initiatlize(){
        view.backgroundColor = .white
        self.title = "Round #1"
        
        view.addSubview(myLabel)
        myLabel.text = "Take Your Pick"
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
        
        view.addSubview(paperBotton)
        paperBotton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        paperBotton.layer.cornerRadius = 48
        paperBotton.setTitle("📃", for: .normal)
        paperBotton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        paperBotton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(342)
            make.top.equalToSuperview().offset(262)
            make.right.left.equalToSuperview().inset(24)
        }
        view.addSubview(scissorsButton)
        scissorsButton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        scissorsButton.layer.cornerRadius = 48
        scissorsButton.setTitle("✂", for: .normal)
        scissorsButton.addTarget(self, action: #selector(moveToPick), for: .touchUpInside)
        scissorsButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        scissorsButton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(342)
            make.top.equalToSuperview().inset(414)
            make.right.left.equalToSuperview().inset(24)
        }
        view.addSubview(rockButton)
        rockButton.backgroundColor = UIColor(red: 0.953, green: 0.949, blue: 0.973, alpha: 1)
        rockButton.layer.cornerRadius = 48
        rockButton.setTitle("🗿", for: .normal)
        rockButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 80)
        rockButton.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.width.equalTo(342)
            make.top.equalToSuperview().inset(566)
            make.right.left.equalToSuperview().inset(24)
        }
        
    }
    @objc func moveToPick(){
        let pickViewController =
        PassViewController()
        navigationController?.pushViewController(pickViewController, animated: true)
    }

}
