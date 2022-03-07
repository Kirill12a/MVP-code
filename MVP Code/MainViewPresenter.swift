//
//  MainViewPresenter.swift
//  MVP Code
//
//  Created by Kirill Drozdov on 07.03.2022.
//

import Foundation

import Foundation

protocol PresenterOuput: AnyObject {

    func didPressedAction()
}

protocol PresenterInput: AnyObject {

    func showNumbers(_ numbers: [Int])
}

class MainViewPresenter: PresenterOuput {

    weak var view: PresenterInput!
    var dataManager: DataManager!

    func didPressedAction() {

        let numbers = dataManager.obtainNumbers()

        view.showNumbers(numbers)
    }
}
