//
//  ViewController.swift
//  Sucubox
//
//  Created by Jose David Bustos H on 14-04-18.
//  Copyright © 2018 Jose David Bustos H. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource,UICollectionViewDelegate{
let array:[String] = ["1000", "1002", "1003", "1026", "1027", "1006", "1007", "1008", "1035", "1010", "1011", "1014", "1015", "1016", "1017", "1018", "1019", "1020", "1021", "1022", "1023", "1024", "1025", "1026", "1027","1028","1029","1030", "1031", "1032", "1033", "1047", "1046", "1047","1048", "1049", "1050", "1051", "1052", "1053", "1054","1055","1040","1041", "1042", "1043", "1025", "1047", "1046", "1036","1101", "1102", "1103", "1104","1105","1106","1107", "1108", "1109", "1110", "1112"
    , "1113", "1114", "1115", "1116", "1117"]
    
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let itemSize = UIScreen.main.bounds.width/3 - 2
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        
        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 2
        
        myCollectionView.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Number of views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    //Populate view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageView.image = UIImage(named: array[indexPath.row] + ".jpg")
        return cell
    }

}

