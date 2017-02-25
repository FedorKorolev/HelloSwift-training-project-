//
//  HelloSwiftViewController.swift
//  HelloSwift
//
//  Created by Фёдор Королёв on 25.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

class HelloSwiftViewController: UIViewController {

    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBAction func helloButtonPressed(_ sender: UIButton) {
        
        // Убедимся, что в поле для ввода есть какой-то текст
        guard nameInput?.text?.isEmpty == false,
            // считаем текст с поля для ввода
        let userName = nameInput?.text else {
            return
        }
        
        let greeting = "Здравствуйте, \(userName)"
        
        // Создаём контроллер с всплывающим сообщением
        let alert = UIAlertController(title: "Урааа!!",
                                      message: greeting,
                                      preferredStyle: .alert)
        
        // Создаём кнопку для высплывающего сообщения
        let helloAction = UIAlertAction(title: "Привет!",
                                        style: .default) { action in
                                            print("Пользователь нажал \(action)")
        }
        
        // Добавим кнопку на новый контроллер
        alert.addAction(helloAction)
        
        //Прелставим всплывающее сообщение
        present(alert,
                animated: true,
                completion: nil)
    }
    
}
