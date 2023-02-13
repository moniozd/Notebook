//
//  MyFileManager.swift
//  Notebook
//
//  Created by Monika Ozdoba on 08/02/2023.
//

import Foundation
class MyFileManager: ObservableObject{
    

    
    let userDefaults = UserDefaults.standard
    @Published var items = [Item]() //our local database
    let arrayKey = "key"
    
    init(){
        items.append(Item(title: "hej 1"))
        items.append(Item(title: "hej 2"))
        save()
        read()
    }
    
    func save(){
        do{
            let encodedData = try JSONEncoder().encode(items)
            userDefaults.set(encodedData, forKey: arrayKey)
        }catch{
            
        }
    }
    //    ? --> option
    func read(){
        if let result = userDefaults.object(forKey: arrayKey) as? Data{
            do{
                let results = try JSONDecoder().decode([Item].self, from: result)
                self.items = results
                for i in items {
                    print(i) //for debugging
                }
            }catch{
                
            }
            
        }else{
            
        }
    }
    
}
