//
//  PickerCellViewModel.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation

protocol PickerCellViewModelProtocol: CellViewModelProtocol {
    
}

class PickerCellViewModel: PickerCellViewModelProtocol {
    
    let cellIdentifier = CalculatorCellIdenfiers.pickerCell.rawValue
    let cellTitle: String
    
    init(cellTitle: String) {
        self.cellTitle = cellTitle
    }
}
