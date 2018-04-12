//
//  PickerCellViewModel.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol PickerCellViewModelProtocol {
    
}

class PickerCellViewModel: CellViewModelProtocol, CalculatorCellViewModelProtocol {
    
    let cellIdentifier = CalculatorCellIdenfiers.pickerCell.rawValue
    var cellTitle: Observable<String>
    
    init(cellTitle: String) {
        self.cellTitle = Observable.just(cellTitle)
    }
}
