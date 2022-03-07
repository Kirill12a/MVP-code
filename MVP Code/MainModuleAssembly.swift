//
//  MainModuleAssembly.swift
//  MVP Code
//
//  Created by Kirill Drozdov on 07.03.2022.
//

import UIKit

class MainModuleAssembly
{

  class func configuredModule() -> UIViewController   // можно func
  {

    let view = ViewController()
    
    let presenter = MainViewPresenter()
    let dataManager = DataManagerImplementation()

    view.output = presenter

    presenter.view = view
    presenter.dataManager = dataManager

    return view
  }
}
