//
//  ViewController.swift
//  RSP
//
//  Created by Dinmukhamed on 31.01.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    let backgroundImageView = UIImageView()
    let singlePlayerButton = UIButton()
    let multiPlayerButton = UIButton()
    let welcomeLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }


}

extension MainViewController{
    private func initialize(){
        
        view.addSubview(backgroundImageView)
        backgroundImageView.image = UIImage(named: "BackgroundImage")
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
        view.addSubview(welcomeLabel)
        welcomeLabel.text = "Welcome to the game!"
        welcomeLabel.textColor = .white
        welcomeLabel.numberOfLines = 0
        welcomeLabel.lineBreakMode = .byWordWrapping
        welcomeLabel.textAlignment = .center
        welcomeLabel.font = UIFont.boldSystemFont(ofSize: 54)
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(92)
            make.right.left.equalToSuperview().inset(16)
        }
        
        view.addSubview(singlePlayerButton)
        singlePlayerButton.layer.backgroundColor = UIColor(red: 0.404, green: 0.314, blue: 0.643, alpha: 1).cgColor
        singlePlayerButton.layer.cornerRadius = 8
        singlePlayerButton.setTitle("Single Player", for: .normal)
        singlePlayerButton.setTitleColor(.white, for: .normal)
        singlePlayerButton.addTarget(self, action: #selector(moveToSingle), for: .touchUpInside)
        singlePlayerButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(666)
            make.height.equalTo(50)
            make.left.right.equalToSuperview().inset(16)
        }

        view.addSubview(multiPlayerButton)
        multiPlayerButton.layer.backgroundColor = UIColor(red: 0.404, green: 0.314, blue: 0.643, alpha: 1).cgColor
        multiPlayerButton.layer.cornerRadius = 8
        multiPlayerButton.setTitle("Multi Player", for: .normal)
        multiPlayerButton.setTitleColor(.white, for: .normal)
        multiPlayerButton.addTarget(self, action: #selector(moveToMulti), for: .touchUpInside)
        multiPlayerButton.snp.makeConstraints { make in
            make.top.equalTo(singlePlayerButton.snp.bottom).offset(10)
            make.height.equalTo(50)
            make.left.right.equalToSuperview().inset(16)
        }
    }
    @objc func moveToSingle(){
        let singleViewController = SingleViewController()
        navigationController?.pushViewController(singleViewController, animated: true)
    }
    @objc func moveToMulti(){
        let multiViewController = MultiViewController()
        navigationController?.pushViewController(multiViewController, animated: true)
    }
    
}

