//
//  Book.swift
//  BookManager
//
//  Created by Lee hyunjoo on 2017. 3. 19..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import Foundation

class Book{
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint(){
        print("Name: \(name)")
        print("Genre: \(genre)")
        print("Author: \(author)")
    }
}
