//
//  DataManager.swift
//  MVP Code
//
//  Created by Kirill Drozdov on 07.03.2022.
//

import Foundation

protocol DataManager
{
  func obtainNumbers() -> [Int]
}

class DataManagerImplementation: DataManager
{
  func obtainNumbers() -> [Int]
  {
    return [1,2,3,4,5,6]
  }
}
