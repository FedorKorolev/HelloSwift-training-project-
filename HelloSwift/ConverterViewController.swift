//
//  ConverterViewController.swift
//  HelloSwift
//
//  Created by Фёдор Королёв on 25.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var converter = Converter(forwardRatio: 1 / 61.9, backwardRatio: 58.3, precision: 2)
    
    @IBOutlet weak var converterView: ConverterView!
    
    // Этот метод вызывается единожды за жизнь одного экрана и являтется отличной точкой для подготовки к работе
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        
        // Станем делегатом для нашего ConverterView
        converterView.delegate = self
    }
    
}

// Релизуем поддержку протокола классом
extension ConverterViewController: ConverterViewDelegate {
    
    // Конвертация из рублей в евро
    func converterView(view: ConverterView, convertForward value: String?) {
        
        // Попробуем извлечь число из строки
        guard let rubText = value,
              let rubles = Double(rubText) else {
                return
        }
        // Пересчитаем валюту в рубли
        let euro = converter.convertForward(amount: rubles)
        
        // Запишем новое значение в правое поле для ввода
        view.toValue = "\(euro)"
    }
    
    func converterView(view: ConverterView, convertBackward value: String?) {
        guard let euroText = value,
              let euro = Double(euroText) else {
                return
        }
        let rubles = converter.convertBackward(amount: euro)
        view.fromValue = "\(rubles)"
        
    }
}
