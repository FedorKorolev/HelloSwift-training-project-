//
//  ConverterView.swift
//  HelloSwift
//
//  Created by Фёдор Королёв on 25.02.17.
//  Copyright © 2017 Фёдор Королёв. All rights reserved.
//

import UIKit

// Чтобы можно было сделать слабую ссылку, зададим наследование протокола от протокола class
protocol ConverterViewDelegate:class {
    func converterView(view: ConverterView, convertForward value: String?)
    func converterView(view: ConverterView, convertBackward value: String?)
}

class ConverterView: UIView {
    
    // На делегата нужно делать слабую опциональную ссылку
    weak var delegate: ConverterViewDelegate?
    
    var toValue: String? {
        set {
            toTextField?.text = newValue
        }
        get {
            return toTextField?.text
        }
    }
    
    var fromValue: String? {
        get {
            return fromTextField?.text
        }
        set {
            fromTextField?.text = newValue
        }
    }

    
    @IBOutlet private weak var toTextField: UITextField?
    @IBOutlet private weak var fromTextField: UITextField?
    
    @IBAction func forwardPressed() {
        delegate?.converterView(view: self, convertForward: fromValue)
    }
    @IBAction func backwardPressed() {
        delegate?.converterView(view: self, convertBackward: toValue)
    }
    
    // Как сделать инициализатор View с дополнительными параметрами, указанными в Setup, которые будут выполняться при загрузке сториборда
    // Переопределим инициализатор UIView
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
    
    
    
    
}
