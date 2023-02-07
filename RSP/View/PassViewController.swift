//
//  PassViewController.swift
//  RSP
//
//  Created by Dinmukhamed on 02.02.2023.
//

import UIKit

class PassViewController: UIViewController {
    
    let myLabel = UILabel()
    let readyButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        initiatlize()
        // Do any additional setup after loading the view.
    }
    private func initiatlize(){
        view.backgroundColor = .white
        self.title = "Round #1"
        
        view.addSubview(myLabel)
        myLabel.text = "Pass the phone to your opponent"
        myLabel.textAlignment = .center
        myLabel.numberOfLines = 0
        myLabel.font = UIFont.boldSystemFont(ofSize: 54)
        myLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(92)
            make.left.right.equalToSuperview().inset(16)
        }
        view.addSubview(readyButton)
        readyButton.setTitle("Ready to continiue", for: .normal)
        readyButton.backgroundColor = UIColor(red: 0.404, green: 0.314, blue: 0.643, alpha: 1)
        readyButton.layer.cornerRadius = 8
        readyButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.top.equalToSuperview().inset(754)
            make.left.right.equalToSuperview().inset(16)
        }
    }

   

}
