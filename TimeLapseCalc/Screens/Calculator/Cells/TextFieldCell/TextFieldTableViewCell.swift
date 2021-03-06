//
//  TextFieldTableViewCell.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TextFieldTableViewCell: UITableViewCell, CalculatorCellProtocol {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    private let disposeBag = DisposeBag()

    func setupWithViewModel(viewModel: CellViewModelProtocol) {
        guard let viewModel = viewModel as? TextFieldCellViewModel else { return }
        
        viewModel.cellTitle
            .bind(to: title.rx.text)
            .disposed(by: disposeBag)
    }
}
