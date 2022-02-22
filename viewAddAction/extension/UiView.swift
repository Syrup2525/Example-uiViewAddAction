//
//  uiView.swift
//  viewAddAction
//
//  Created by 김경환 on 2022/02/22.
//

import Foundation
import UIKit

extension UIView {
    func addAction(action : @escaping () -> ()) {
        let tap = TapGestureRecognizer(target: self , action: #selector(self.tapGestuer(_:)))
        tap.action = action

        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
    }
    
    @objc func tapGestuer(_ sender: TapGestureRecognizer) {
        sender.action!()
    }
}

class TapGestureRecognizer: UITapGestureRecognizer {
    var action : (() -> ())? = nil
}
