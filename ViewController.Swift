//
//  FirstViewController.swift
//  Trenu
//
//  Created by Brandon Nguyen on 3/8/15.
//  Copyright (c) 2015 Trenu. All rights reserved.
//

//#import <UIKit/UIKit.h>

//@interface ViewController : UIViewController<UITabBarDelegate>
//@property (weak, nonatomic) IBOutlet UITabBar *mainTabBar;

//@end



//#import "ViewController.swift"
//#import "MyFirstTabViewController.swift"
//#import "MySecondTabViewController.swift"
//@interface ViewController ()
//{
//    UIViewController *viewController1;
//    UIViewController *viewController2;
//}

//@end

//@implementation ViewController

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.mainTabBar.delegate=self;
//    }
    
    
//    - (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
        
        
        
//        switch (item.tag) {
//        case 1:
//            if (viewController1 == nil) {
//                viewController1 =
//                    [[UIStoryboard storyboardWithName:@"Main"
//                bundle:NULL] instantiateViewControllerWithIdentifier:@"First"];
                
//            }
//            [self.view insertSubview:viewController1.view belowSubview:self.mainTabBar];
            
//            break;
//        case 2:
//            if (viewController2 == nil) {
//                viewController2 =
//                    [[UIStoryboard storyboardWithName:@"Main"
//                bundle:NULL] instantiateViewControllerWithIdentifier:@"Second"];
                
//            }
//            [self.view insertSubview:viewController2.view belowSubview:self.mainTabBar];
            
//            break;
//        default:
//            break;
//        }
//        }
        
        
//        - (void)didReceiveMemoryWarning
//            {
//                [super didReceiveMemoryWarning];
                // Dispose of any resources that can be recreated.
//        }


import UIKit

class FirstViewController: UIViewController {

    @IBAction func toView2Pressed(sender: AnyObject) {
        let view2 = self.storyboard.instantiateViewControllerWithIdentifier(identifier: String?) as myViewController2
        self.navigationController?.pushViewController(view2, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

