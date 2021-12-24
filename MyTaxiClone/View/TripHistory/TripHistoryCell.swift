//
//  TripHistoryCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryCell: UITableViewCell {
    
    var itemsToShow : Post? {
        didSet {
            frameImage.image = itemsToShow?.carImage
        }
    }
    
    // MARK: - Properties
    let container: UIView = {
        let viewCon = UIView()
        viewCon.frame = CGRect(x: 10, y: 10, width: 343, height: 118)
        viewCon.layer.cornerRadius = 12
        viewCon.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        viewCon.translatesAutoresizingMaskIntoConstraints = false
        
        return viewCon
    }()
    
    let redImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame 6201")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let redsStreet: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 287, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.text = "улица Sharof Rashidov, Ташкент"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let blueImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame 620")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let blueStreet: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 287, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.text = "5a улица Асадуллы Ходжаева"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let bottomFrame: UIView = {
        let frame = UIView()
        frame.frame = CGRect(x: 0, y: 0, width: 343, height: 42)
        frame.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        frame.translatesAutoresizingMaskIntoConstraints = false
        
        return frame
    }()
    
    let frameClock: UILabel = {
        let clock = UILabel()
        clock.frame = CGRect(x: 0, y: 0, width: 85, height: 18)
        clock.backgroundColor = .white
        clock.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        clock.font = UIFont(name: "Lato-Bold", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.07
        clock.attributedText = NSMutableAttributedString(string: "12:00 - 12:19", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        clock.translatesAutoresizingMaskIntoConstraints = false
        
        return clock
    }()
    
    let frameImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Bitmap-2")
        image.frame = CGRect(x: 0, y: 0, width: 108, height: 39)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Embed subviews.
    
    private func setUp(){
        embedSubViews()
        setUpSubviewConstraints()
    }
    
    func embedSubViews(){
        addSubview(container)
        container.addSubview(frameImage)
        container.addSubview(bottomFrame)
        bottomFrame.addSubview(frameClock)
        bottomFrame.addSubview(frameImage)
        container.addSubview(redImage)
        container.addSubview(redsStreet)
        container.addSubview(blueImage)
        container.addSubview(blueStreet)
        
    }
    func setUpSubviewConstraints(){
        containerConstraints()
        redImageConstraints()
        redStreetConstraints()
        blueImageConstraints()
        blueStreetConstraints()
        bottomFrameConstraints()
        clockConstraints()
        carImageConstraints()
        
    }
    
    
    
    // MARK: -  Setup constraints.
    
    func containerConstraints(){
        NSLayoutConstraint.activate([
            container.widthAnchor.constraint(equalToConstant: 13),
            container.heightAnchor.constraint(equalToConstant: 13),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            container.topAnchor.constraint(equalTo: topAnchor, constant: 149),
            container.centerXAnchor.constraint(equalTo: self.centerXAnchor)

        ])
    }
    
    func redImageConstraints(){
        NSLayoutConstraint.activate([
            redImage.widthAnchor.constraint(equalToConstant: 16),
            redImage.heightAnchor.constraint(equalToConstant: 16),
            redImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            redImage.topAnchor.constraint(equalTo: topAnchor, constant: 12)
            
        ])
        
    }
    
    func blueImageConstraints(){
        NSLayoutConstraint.activate([
            blueImage.widthAnchor.constraint(equalToConstant: 24),
            blueImage.heightAnchor.constraint(equalToConstant: 24),
            blueImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            blueImage.topAnchor.constraint(equalTo: topAnchor, constant: 40)
        ])
        
        
    }
    
    func redStreetConstraints(){
        NSLayoutConstraint.activate([
            redImage.widthAnchor.constraint(equalToConstant: 287),
            redImage.heightAnchor.constraint(equalToConstant: 17),
            redImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 44),
            redImage.topAnchor.constraint(equalTo: topAnchor, constant: 14)
        ])
        
    }
    
    func blueStreetConstraints(){
        NSLayoutConstraint.activate([
            blueStreet.widthAnchor.constraint(equalToConstant: 287),
            blueStreet.heightAnchor.constraint(equalToConstant: 17),
            blueStreet.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 44),
            blueStreet.topAnchor.constraint(equalTo: topAnchor, constant: 42)
        ])
    }
    
    func bottomFrameConstraints(){
        NSLayoutConstraint.activate([
            bottomFrame.widthAnchor.constraint(equalToConstant: 343),
            bottomFrame.heightAnchor.constraint(equalToConstant: 42),
            bottomFrame.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            bottomFrame.topAnchor.constraint(equalTo: topAnchor, constant: 76)
        ])
        
        
    }
    
    func clockConstraints(){
        NSLayoutConstraint.activate([
            frameClock.widthAnchor.constraint(equalToConstant: 85),
            frameClock.heightAnchor.constraint(equalToConstant: 18),
            frameClock.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            frameClock.topAnchor.constraint(equalTo: topAnchor, constant: 12)
        ])
        
    }
    
    func carImageConstraints(){
        NSLayoutConstraint.activate([
            frameImage.widthAnchor.constraint(equalToConstant: 108),
            frameImage.heightAnchor.constraint(equalToConstant: 39),
            frameImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 225),
            frameImage.topAnchor.constraint(equalTo: topAnchor, constant: -10)
        ])
        
    }

    
}
