//
//  PrincipalComprador.swift
//  aobaApp-iOS
//
//  Created by M Cavasin on 12/08/20.
//  Copyright © 2020 M Cavasin. All rights reserved.
//

import UIKit

class PrincipalComprador: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setUp()
    }
    
    func setUp() {
        
        let storyboard = UIStoryboard(name: "TabPedidosComprador", bundle: nil)
        let storyboard1 = UIStoryboard(name: "TabHortifruitComprador", bundle: nil)
        
        let firstBookTableVc = storyboard.instantiateViewController(withIdentifier: "TabPedidosComprador")
        let secondBookTableVc = storyboard1.instantiateViewController(withIdentifier: "TabHortifruitComprador")
        
        //configure the view controllers here...
        
        viewControllers = [firstBookTableVc, secondBookTableVc]
        
        //        tabBar.items?[0].image = [first tab bar image]
        //        tabBar.items?[1].image = [second tab bar image]
        
        tabBar.items?[0].title = "Anuncios"
        tabBar.items?[1].title = "Pedidos"
    }
}
