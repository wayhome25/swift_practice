//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Lee hyunjoo on 2017. 3. 20..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var countLabel:UILabel!
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //
        //  main.swift
        //  BookManager
        //
        //  Created by Lee hyunjoo on 2017. 3. 19..
        //  Copyright © 2017년 Lee hyunjoo. All rights reserved.
        //
        

        
        let book1 = Book()
        book1.name = "햄릿"
        book1.genre = "비극"
        book1.author = "셰익스피어"
        
        //book1.bookPrint()
        
        let book2 = Book()
        book2.name = "누구를 위하여 종을 울리나"
        book2.genre = "전쟁소설"
        book2.author = "헤밍웨이"
        
        //book2.bookPrint()
        
        let book3 = Book()
        book3.name = "죄와벌"
        book3.genre = "사실주의"
        book3.author = "톨스토이"
        
        //book3.bookPrint()
        

        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        countLabel.text = "\(myBook.countBook())"
        
    }

    @IBAction func showAllBookAction(_ sender:AnyObject){
        // print(myBook.showAllBook())
        outputTextView.text = myBook.showAllBook()   
    }
    
    @IBAction func addBookAction(_ sender:AnyObject){
        let bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) 도서가 등록되었습니다"
        countLabel.text = "\(myBook.countBook())"
    }
    
    @IBAction func findBookAction(_ sender:AnyObject){
        let resultBook = myBook.findBook(nameTextField.text!)
        if resultBook != nil{
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "찾으시는 책이 없습니다^^;"
        }
    }
    
    @IBAction func removeBookAction(_ sender:AnyObject){
        let deleteBook = myBook.removeBook(nameTextField.text!)
        if deleteBook == true{
            outputTextView.text = "\(nameTextField.text!) 도서를 삭제했습니다ㅠㅠ"
        }else{
            outputTextView.text = "지우려는 책이 없습니다."
        }
        countLabel.text = "\(myBook.countBook())"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

