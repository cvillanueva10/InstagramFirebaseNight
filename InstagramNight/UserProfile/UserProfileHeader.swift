//
//  UserProfileHeader.swift
//  InstagramNight
//
//  Created by Christopher Villanueva on 1/8/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

class UserProfileHeader: UICollectionViewCell, UIComponentBuilder {
    
    lazy var usernameLabel: UILabel = {
        let label = createLabelWithTitle(title: "Username", font: UIFont.boldSystemFont(ofSize: 16))
        return label
    }()
    
    lazy var postsLabel: UILabel = {
        let label = createLabelWithTitle(title: "0\n posts", font: UIFont.boldSystemFont(ofSize: 14))
        let attributedText = NSMutableAttributedString(string: "0\n", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: "Posts", attributes: [NSAttributedStringKey.foregroundColor : UIColor.lightGray, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)]))
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    lazy var followersLabel: UILabel = {
        let label = createLabelWithTitle(title: "", font: UIFont.boldSystemFont(ofSize: 14))
        let attributedText = NSMutableAttributedString(string: "0\n", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: "Followers", attributes: [NSAttributedStringKey.foregroundColor : UIColor.lightGray, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)]))
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    lazy var followingLabel: UILabel = {
        let label = createLabelWithTitle(title: "0 \n following", font: UIFont.boldSystemFont(ofSize: 14))
        let attributedText = NSMutableAttributedString(string: "0\n", attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedText.append(NSAttributedString(string: "Following ", attributes: [NSAttributedStringKey.foregroundColor : UIColor.lightGray, NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14)]))
        label.attributedText = attributedText
        label.textAlignment = .center
        return label
    }()
    
    lazy var gridButton: UIButton = {
        let button = createButtonWithImage(image: #imageLiteral(resourceName: "grid"))
        return button
    }()
    
    lazy var listButton: UIButton = {
        let button = createButtonWithImage(image: #imageLiteral(resourceName: "list"))
        return button
    }()
    
    lazy var bookmarkButton: UIButton = {
        let button = createButtonWithImage(image: #imageLiteral(resourceName: "ribbon"))
        return button
    }()
    
    lazy var editProfileButton: UIButton = {
        let button = createButtonWithTitle(title: "Edit profile")
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 3
        return button
    }()
    
    let topNavBarDividerView: UIView = {
        let line = UIView()
        line.backgroundColor = .lightGray
        return line 
    }()
   
    var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var user: User? {
        didSet {
           setupProfileImage()
           usernameLabel.text = user?.username
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    
        backgroundColor = .darkBlue
        
       
        
        setupUI()
    }
    
    private func setupUI() {
        
        setupTopNavBarDividerView()
        setupProfileImage()
        setupBottomTabBar()
        setupUsernameLabel()
        setupUserStatsView()
        setupEditProfileButton()
    }
    
    private func setupTopNavBarDividerView(){
        addSubview(topNavBarDividerView)
        topNavBarDividerView.anchor(top: topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0.5)
    }
    
    private func setupEditProfileButton() {
        addSubview(editProfileButton)

        editProfileButton.anchor(top: postsLabel.bottomAnchor, paddingTop: 4, left: postsLabel.leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: followingLabel.rightAnchor, paddingRight: 0, width: 0, height: 34)
    }
    
    private func setupUserStatsView() {
        let stackView = UIStackView(arrangedSubviews: [postsLabel, followersLabel, followingLabel])
        stackView.distribution = .fillEqually
        addSubview(stackView)
        stackView.anchor(top: topAnchor, paddingTop: 12, left: profileImageView.rightAnchor, paddingLeft: 12, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: -12, width: 0, height: 50)
    
    
    }
    
    private func setupBottomTabBar() {
        let topDividerView = UIView()
        topDividerView.backgroundColor = .lightGray
        
        let bottomDividerView = UIView()
        bottomDividerView.backgroundColor = .lightGray
        
        let stackView = UIStackView(arrangedSubviews: [gridButton, listButton, bookmarkButton])
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        addSubview(topDividerView)
        addSubview(bottomDividerView)
        stackView.anchor(top: nil, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: self.bottomAnchor, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 50)
        
        topDividerView.anchor(top: stackView.topAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0.5)
        bottomDividerView.anchor(top: stackView.bottomAnchor, paddingTop: 0, left: leftAnchor, paddingLeft: 0, bottom: nil, paddingBotton: 0, right: rightAnchor, paddingRight: 0, width: 0, height: 0.5)
        
    }
    
    private func setupUsernameLabel() {
        addSubview(usernameLabel)
        usernameLabel.anchor(top: profileImageView.bottomAnchor, paddingTop: 4, left: leftAnchor, paddingLeft: 12, bottom: gridButton.topAnchor, paddingBotton: 0 , right: rightAnchor, paddingRight: 12, width: 0, height: 0)
    }
   
    private func setupProfileImage() {
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topNavBarDividerView.topAnchor, paddingTop: 12 , left: leftAnchor, paddingLeft: 12, bottom: nil, paddingBotton: 0, right: nil, paddingRight: 0, width: 80, height: 80)
        profileImageView.layer.cornerRadius = 80 / 2
        
        guard let profileImageUrlString = user?.profileImageUrl else { return }
        guard let url = URL(string: profileImageUrlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("Failed to fetch user: ", error)
            }
            
            guard let data = data else { return }
            print(data)
            let image = UIImage(data: data)
            DispatchQueue.main.async {
                self.profileImageView.image = image
            }
            
            }.resume()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}






