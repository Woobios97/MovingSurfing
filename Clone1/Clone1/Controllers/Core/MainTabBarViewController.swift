//
//  MainTabBarViewController.swift
//  Clone1
//
//  Created by 김우섭 on 10/4/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        /*
         각 탭이 자체적인 Navigation Controller를 가지게 함으로써, 각 탭 내에서의 화면 전환(즉, push/pop 뷰 컨트롤러)을 독립적으로 관리할 수 있기 때문입니다. 
         예를 들어, '홈' 탭에서 여러 영화 상세 화면으로 이동하거나, '검색' 탭에서 검색 결과를 표시하는 등의 동작을 각 탭 내에서 독립적으로 수행할 수 있습니다.
         이렇게 하면 사용자는 앱의 다양한 섹션을 자유롭게 탐색할 수 있으며, 각 섹션 내에서도 별도의 내비게이션 스택을 가질 수 있다.
         */
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")

        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "play.circle.fill")
        
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")

        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "arrow.down.to.line.circle.fill")
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }    
}

