//
//  CellViewModelProtocol.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation

protocol CellViewModelProtocol {
    var cellIdentifier: String { get }
    var cellTitle: String { get }
}

protocol CalculatorCellProtocol {
    func setupWithViewModel(viewModel: CellViewModelProtocol)
}
