//
//  DetailViewController.swift
//  DemoSegerTable
//
//  Created by admin on 6/28/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var lbCity: UILabel!
    @IBOutlet weak var lbDetail: UILabel!

    var thanhHoaData1: thanhHoaModel?
    var haNoiData1: haNoiModel?
    var daNangData1: daNangModel?
    var saiGonData1: saiGonModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if thanhHoaData1?.city == "thanh hoa" {
            imageDetail.image = UIImage(named: (thanhHoaData1?.image!)!)
            lbDetail.text = thanhHoaData1?.title
            lbCity.text = thanhHoaData1?.city
        } else if haNoiData1?.city == "Ha Noi" {
              imageDetail.image = UIImage(named: (haNoiData1?.image!)!)
              lbDetail.text = haNoiData1?.title
              lbCity.text = haNoiData1?.city
            
        } else if daNangData1?.city == "Da Nang" {
              imageDetail.image = UIImage(named: (daNangData1?.image!)!)
              lbDetail.text = daNangData1?.title
              lbCity.text = daNangData1?.city
           
        } else if saiGonData1?.city == "Sai Gon" {
              imageDetail.image = UIImage(named: (saiGonData1?.image!)!)
              lbDetail.text = saiGonData1?.title
              lbCity.text = saiGonData1?.city
           
        }

        
    }
    

}
