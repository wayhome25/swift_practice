//
//  BookManager.swift
//  BookManager
//
//  Created by Lee hyunjoo on 2017. 3. 19..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]() // mutable array
    
    func addBook(_ bookObject:Book){
        bookList += [bookObject]
    }
    
    func showAllBook() -> String{
        var strTemp = ""
        for bookTemp in bookList{
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "-----------------------------\n"
        }
        return strTemp
    }
    
    func countBook() -> Int{
        return bookList.count
    }
    
    func findBook(_ name:String)->String?{
        var strTemp = ""
        for bookTemp in bookList{
            if bookTemp.name == name{
                strTemp += "Name : \(bookTemp.name)\n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)"
                return strTemp
            }
        }
        return nil
    }
    
    func removeBook(_ name:String)->Bool{
        for bookTemp in bookList{
            if bookTemp.name == name{
                let index = (bookList as NSArray).index(of: bookTemp)
                bookList.remove(at: index)
                return true
            }
         }
        return false
    }

}


