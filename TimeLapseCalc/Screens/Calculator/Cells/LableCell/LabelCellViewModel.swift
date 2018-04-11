//
//  LabelCellViewModel.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation

protocol LabelCellViewModelProtocol: CellViewModelProtocol {
    
}

class LabelCellViewModel: LabelCellViewModelProtocol {
    
    let cellIdentifier = CalculatorCellIdenfiers.lableCell.rawValue
    let cellTitle: String
    
    init(cellTitle: String) {
        self.cellTitle = cellTitle
    }
}
