//
//  TableViewCell.swift
//  DemoSegerTable
//
//  Created by admin on 6/27/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    var thanhHoaModel1: thanhHoaModel!{
        // gọi hàm huỷ khởi tạo.
        didSet {
            lb1.text = thanhHoaModel1.title
            lb2.text = thanhHoaModel1.city
            imageCell.image = UIImage(named: thanhHoaModel1.image!)
        }
    }
    var haNoiModel1: haNoiModel!{
        didSet {
            lb1.text = haNoiModel1.title
            lb2.text = haNoiModel1.city
            imageCell.image = UIImage(named: haNoiModel1.image!)
        }
    }
    var daNangModel1: daNangModel! {
        didSet {
            lb1.text = daNangModel1.title
            lb2.text = daNangModel1.city
            imageCell.image = UIImage(named: daNangModel1.image!)
        }
    }
    var saiGonModel1: saiGonModel!{
        didSet {
            lb1.text = saiGonModel1.title
            lb2.text = saiGonModel1.city
            imageCell.image = UIImage(named: saiGonModel1.image!)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}
