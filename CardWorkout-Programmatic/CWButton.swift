//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by Admin on 04/01/2024.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        //overriding initial inbuit UIKit set up to configure our subclass
        super.init(frame: frame)
        configure()
    }
    
//Used if set up done by sroryboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

// Set Initializer - we use it in CardSelectionVC (let objects)
    init(backgroundColour: UIColor, title: String){
// parameter name 'background'
        super.init(frame: .zero)
//frame means just like constraints needs to be set up; manually it would be: super.init(frame: CGRect(x:, y:,width:, height:) To point all '0' values set up to .zero.
        self.backgroundColor = backgroundColour
//if parameter name is the same as the property on the button 'self' needs to be added
// we setted backgroundcolour to be equal whatever colour we are passing through
        setTitle(title, for: .normal)
        configure()
    }
    
//Background, Title - different between buttons, so cannot be putted in the configure, cause all objects will have same set up
    func configure() {
    layer.cornerRadius = 8
    titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
    setTitleColor(.white, for: .normal)
    translatesAutoresizingMaskIntoConstraints = false
// This line says "Use autolayout on this object"
    
   }

}
