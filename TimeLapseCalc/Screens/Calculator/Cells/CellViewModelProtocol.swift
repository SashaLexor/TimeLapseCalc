//
//  CellViewModelProtocol.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol CellViewModelProtocol {
    var cellIdentifier: String { get }
}

protocol CalculatorCellViewModelProtocol {
    var cellTitle: Observable<String> { get }
}

protocol CalculatorCellProtocol {
    func setupWithViewModel(viewModel: CellViewModelProtocol)
}
