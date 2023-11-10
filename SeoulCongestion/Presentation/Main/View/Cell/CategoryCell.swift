//
//  CategoryCell.swift
//  SeoulCongestion
//
//  Created by jangilkyu on 2023/10/29.
//

import UIKit
import SnapKit

class CategoryCell: UICollectionViewCell {
    static let identifier = "categoryCellId"
    
    let nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Dd"
//        lb.backgroundColor = .black
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        print("CategoryCell initialized")

    }
    
    private func setUI() {
        [nameLabel].forEach{ self.addSubview($0) }
        
        nameLabel.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(5)
            make.trailing.bottom.equalToSuperview().offset(-5)
        }
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
}
