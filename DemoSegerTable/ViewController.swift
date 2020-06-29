//
//  ViewController.swift
//  DemoSegerTable
//
//  Created by admin on 6/27/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    // khai báo một úiegmented.để thực hiện các trường hợp.
    @IBOutlet weak var segOut: UISegmentedControl!
    
    // Khai báo mảng data của các vùng.
    var thanhHoaData: [thanhHoaModel] = []
    var haNoiData: [haNoiModel] = []
    var daNangData: [daNangModel] = []
    var saiGonData: [saiGonModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // hiển thị các mảng data lên màn hình.
        thanhHoaData = [
        thanhHoaModel(city: "thanh hoa", image: "a1", title: "Thnh phố thanh hoá về đêm"),
        thanhHoaModel(city: "thanh hoa", image: "a2", title: "Tượng đài lê lợi, chỗ ngã tư tp thanh Hoá"),
        thanhHoaModel(city: "thanh hoa", image: "a3", title: "Bãi biển hải Tiến"),
        thanhHoaModel(city: "thanh hoa", image: "a4", title: "Bãi biển hải hoá"),
        thanhHoaModel(city: "thanh hoa", image: "a5", title: "Thanh hoá ban ngày, chơ."),
        thanhHoaModel(city: "thanh hoa", image: "a6", title: "thnah hoá đẹp quá")
        ]
        
        haNoiData = [
        haNoiModel(city: "Ha Noi", image: "b1", title: "người bán ràng ron đạp xe buổi sáng"),
        haNoiModel(city: "Ha Noi", image: "b2", title: "lá vàng mùa thu hà nội"),
        haNoiModel(city: "Ha Noi", image: "b3", title: "hồ ngươm hà nội buổi sáng"),
        haNoiModel(city: "Ha Noi", image: "b4", title: "lại là buổi sáng"),
        haNoiModel(city: "Ha Noi", image: "b5", title: "hồ gươm buổi tối rất đẹp"),
        haNoiModel(city: "Ha Noi", image: "b6", title: "chùa một cột ở hà nội")
        ]
        
        daNangData = [
        daNangModel(city: "Da Nang", image: "c1", title: "đà nẵng ban ngày bên cầu hàm rồng"),
        daNangModel(city: "Da Nang", image: "c2", title: "cầu bai bàn tay ở banahil"),
        daNangModel(city: "Da Nang", image: "c3", title: "đà nẵng về đêm"),
        daNangModel(city: "Da Nang", image: "c4", title: "cầu hàm rồng ở đà nẵng đẹp phết"),
        daNangModel(city: "Da Nang", image: "c5", title: "cầu hàm rồng về dêm"),
        daNangModel(city: "Da Nang", image: "c6", title: "cầu hàm rồng bên bờ sông hàn.")
            
        ]
        
        saiGonData = [
        saiGonModel(city: "Sai Gon", image: "d1", title: "sài gòn ban đêm bên sông "),
        saiGonModel(city: "Sai Gon", image: "d2", title: "vẫn là sài gòn ban  "),
        saiGonModel(city: "Sai Gon", image: "d3", title: "chợ bến thành sài. gòn"),
        saiGonModel(city: "Sai Gon", image: "d4", title: "bên dòng sông"),
        saiGonModel(city: "Sai Gon", image: "d5", title: "sài gòn với cung đường bộ"),
        saiGonModel(city: "Sai Gon", image: "d6", title: "cung dường vàng choé")
        ]
    }
    
    @IBAction func btnButon(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
        
    }
}

extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Dặt các trường hợp khi vào từng tableView co các cell khác nhau.
        var value: Int = 0
        // seout là đầu ra và lựa chọn index của từng cell
        switch segOut.selectedSegmentIndex {
        case 0:
            value = thanhHoaData.count
            break
        case 1:
            value = haNoiData.count
            break
        case 2:
            value = daNangData.count
            break
        case 3:
            value = saiGonData.count
            break
        default:
            break
        }
        // trả giá trị về đúng với các trường hợp.
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath) as! TableViewCell
                // chia các trường hợp để hiển thị lên tableView.
                switch segOut.selectedSegmentIndex {
                case 0:
//                    cell.lb1.text = thanhHoaData[indexPath.row].city
//                    cell.lb2.text = thanhHoaData[indexPath.row].title
//                    cell.imageCell.image = UIImage(named: thanhHoaData[indexPath.row].image!)
                    cell.thanhHoaModel1 = thanhHoaData[indexPath.row]
                    break
                case 1:
                    cell.haNoiModel1 = haNoiData[indexPath.row]
                    break
    
                case 2:
                    cell.daNangModel1 = daNangData[indexPath.row]
                    break
                case 3:
                    cell.saiGonModel1 = saiGonData[indexPath.row]
                    break
    
                default:
                    break
                }
        return cell
    }
    
    // hàm chọ từng cell một
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // phương thức khởi tạo màn viewController.
        let detailVC = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        
        // chia các trường hợp khi bấm vào các selectedSegment
        switch segOut.selectedSegmentIndex {
        case 0:
            // gọi các thành phần lần lượt của view thanhHoasData1 vào màn detailVC sau đó chuyển sang màn detail.
            detailVC.thanhHoaData1 = thanhHoaData[indexPath.row]
            break
        case 1:
            detailVC.haNoiData1 = haNoiData[indexPath.row]
            break
        case 2:
            detailVC.daNangData1 = daNangData[indexPath.row]
            break
        case 3:
            detailVC.saiGonData1 = saiGonData[indexPath.row]
            break
        default:
            break
        }
        // phương thức dùng để chuyển từ màn viewController sang màn detail.
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    
    
}

