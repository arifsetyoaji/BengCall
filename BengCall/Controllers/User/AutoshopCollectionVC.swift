//
//  AutoshopCollectionVC.swift
//  BengCall
//
//  Created by Calvin Leonardo on 07/05/20.
//  Copyright © 2020 Calvin Leonardo. All rights reserved.
//

import UIKit
import CloudKit

class AutoshopCollectionVC: UICollectionViewCell {
    
    let helper = CloudKitHelper()
    
    @IBOutlet weak var autoShopImgView: UIImageView!
    @IBOutlet weak var autoShopNameLbl: UILabel!
    @IBOutlet weak var autoShopAddressLbl: UILabel!
    @IBOutlet weak var serviceStackView: UIStackView!
    
    
    @IBAction func bookBtn(_ sender: Any) {
        
        helper.saveBooking(customerName: "Calvin", motorType: "Suzuki CBR 1000", licensePlate: "B 4388 CBR", phoneNumber: "6281234567899", datetime: Date(), autoshopName: "PT Bahagia Selalu")
        
    }
    
    
    var autoShop: AutoShop! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let autoShop = autoShop {
            autoShopImgView.image = autoShop.autoShopImg
            autoShopNameLbl.text = autoShop.autoShopName
            autoShopAddressLbl.text = autoShop.autoShopAddress
            
        } 
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 5.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.masksToBounds = true
                
        self.contentView.layer.cornerRadius = 15.0
        self.contentView.layer.borderWidth = 5.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = true
        self.layer.shadowColor = UIColor.white.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 0.0)
        self.layer.shadowRadius = 6.0
        self.layer.shadowOpacity = 0.6
        self.layer.cornerRadius = 15.0
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
}
    

