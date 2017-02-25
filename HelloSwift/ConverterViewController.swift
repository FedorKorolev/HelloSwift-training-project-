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
    
}
