//
//  CalculatorViewModel.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CalculatorViewModel {
    
    let cellViewModels: Observable<[CellViewModelProtocol]>

    init() {
        cellViewModels = Observable.just([
            PickerCellViewModel(cellTitle: "Cell 1"),
            TextFieldCellViewModel(cellTitle: "Cell 2"),
            LabelCellViewModel(cellTitle: "Cell 3")
            ])
    }
}
