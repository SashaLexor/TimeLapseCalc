//
//  TextFieldCellViewModel.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation

protocol TextFieldCellViewModelProtocol: CellViewModelProtocol {
    
}

class TextFieldCellViewModel: TextFieldCellViewModelProtocol {
    
    let cellIdentifier = CalculatorCellIdenfiers.textFieldCell.rawValue
    let cellTitle: String
    
    init(cellTitle: String) {
        self.cellTitle = cellTitle
    }
}
