//
//  Model.swift
//  CheckListFree
//
//  Created by Igor Mikhalev on 21/04/2019.
//  Copyright © 2019 LeraHome. All rights reserved.
//

import Foundation

var CheckListRows: [[String: Any]] {       //избавляемся от loadData
   
    set {
        UserDefaults.standard.set(newValue, forKey: "CheckListDataKey")
        UserDefaults.standard.synchronize()
    }
    
    get {
        if let array =  UserDefaults.standard.array(forKey: "CheckListDataKey") as? [[String: Any ]] {
            return array
        } else {
            return [] //присваиваем значение пустого словаряя
        }
    }
}

func addItem(nameItem: Any, isCompleted: Bool){
    CheckListRows.append(["Name": nameItem, "isCompleted": false] )
}

func removeItem(at index: Int) {
    CheckListRows.remove(at: index)
}

func changeState(at item: Int) -> Bool{
    CheckListRows[item]["isCompleted"] = !(CheckListRows[item]["isCompleted"] as? Bool ?? false)
        return (CheckListRows[item]["isCompleted"] as! Bool)
}


func replaceItem(nameItem: String){
    
}

func clearAll(){
    CheckListRows.removeAll()
}
