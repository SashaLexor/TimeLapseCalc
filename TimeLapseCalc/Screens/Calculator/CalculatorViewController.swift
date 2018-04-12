//
//  CalculatorViewController.swift
//  TimeLapseCalc
//
//  Created by Alex on 4/11/18.
//  Copyright © 2018 Aliaksandr Karzhenka. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

enum CalculatorCellIdenfiers: String {
    case textFieldCell
    case pickerCell
    case lableCell
}

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel = CalculatorViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableView()
        
        viewModel.cellViewModels
            .bind(to: tableView.rx.items) { (tableView, row, cellViewModel) in
                guard let cell = tableView.dequeueReusableCell(withIdentifier: cellViewModel.cellIdentifier) as? CalculatorCellProtocol & UITableViewCell else {
                    return UITableViewCell(frame: CGRect.zero)
                }
                cell.setupWithViewModel(viewModel: cellViewModel)
                cell.selectionStyle = .none
                return cell
            }
            .disposed(by: disposeBag)
        
        tableView.rx.setDelegate(self)
            .disposed(by: disposeBag)
        
    }
    
    private func configureTableView() {
        tableView.tableFooterView = UIView()
        
        tableView.layer.cornerRadius = 15.0
        tableView.layer.borderColor = UIColor.red.cgColor
        tableView.layer.borderWidth = 3.0
    }
}

extension CalculatorViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var cellHeight: CGFloat = 44
        viewModel.cellViewModels
            .subscribe(onNext: { cellViewModels in
                cellHeight = tableView.frame.height / CGFloat(cellViewModels.count)
            })
            .disposed(by: disposeBag)
        return cellHeight
    }
}
