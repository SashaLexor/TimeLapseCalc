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
    
    private let numberOfPhotosVM = TextFieldCellViewModel(cellTitle: "Number Of photos")
    private let clipLengthVM = PickerCellViewModel(cellTitle: "Clip Length")
    private let fpsVM = PickerCellViewModel(cellTitle: "FPS")
    private let shootingIntervalVM = TextFieldCellViewModel(cellTitle: "Shooting Interval")
    private let shootingDurationVM = PickerCellViewModel(cellTitle: "Shooting duration")
    private let memoryUsageVm = LabelCellViewModel(cellTitle: "Memory Usage")

    init() {
        let viewModels:[CellViewModelProtocol] = [
            numberOfPhotosVM,
            clipLengthVM,
            fpsVM,
            shootingIntervalVM,
            shootingDurationVM,
            shootingDurationVM,
            memoryUsageVm,
        ]
        
        cellViewModels = Observable.just(viewModels).share(replay: 1)
    }
}
