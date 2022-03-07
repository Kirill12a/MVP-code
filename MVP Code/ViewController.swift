//
//  ViewController.swift
//  MVP Code
//
//  Created by Kirill Drozdov on 07.03.2022.
//

import UIKit

class ViewController: UIViewController, PresenterInput, MainViewDelegate{

  var output: PresenterOuput!

     var mainView = MainView()

     override func loadView() {

         view = mainView
     }

     override func viewDidLoad() {
         super.viewDidLoad()

         mainView.delegate = self
     }

     func showNumbers(_ numbers: [Int]) {

         let numbersString = numbers.map({"\($0)"}).joined(separator: ",")

         mainView.textLabel.text = numbersString
     }

     func actionDidPressed() {
         output.didPressedAction()
     }




}



