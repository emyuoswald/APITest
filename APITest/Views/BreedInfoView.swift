//
//  BreedInfo.swift
//  APITest
//
//  Created by Дарья Локтева on 25.08.2023.
//

import UIKit
import SnapKit

final class BreedInfoView: UIView {
    let breedLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        l.textColor = .black
        l.numberOfLines = 0
        return l
    }()
    
    let breedDescriptionLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        l.textColor = .black
        l.numberOfLines = 0
        return l
    }()
    
    let breedImage: UIImageView = {
        let l = UIImageView()
       // l.frame = UIImage(contentsOfFile: 16)
        return l
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        [breedLabel, breedDescriptionLabel, breedImage].forEach(addSubview)
        breedLabel.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview().inset(16)
        }
        breedDescriptionLabel.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview().inset(16)
            make.top.equalTo(breedLabel.snp.bottom).offset(16)
        }
        breedImage.snp.makeConstraints { make in
            make.top.equalTo(breedDescriptionLabel.snp.bottom).offset(16)
            make.top.equalTo(breedLabel.snp.bottom).offset(16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
