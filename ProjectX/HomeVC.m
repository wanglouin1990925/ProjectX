//
//  HomeVC.m
//  ProjectX
//
//  Created by Zaighum on 1/29/17.
//  Copyright © 2017 Zaighumavicenna. All rights reserved.
//

#import "HomeVC.h"
#import <RESideMenu.h>
#import <UIViewController+RESideMenu.h>
#import <Firebase.h>
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    FIRDatabase *dataBase = [[FIRDatabase alloc] init];
    FIRDatabaseReference *ref = [[FIRDatabase database] referenceWithPath:@"ProjectX"];
    
    FIRDatabaseReference *pageref = [ref child:@"Pages"];
    
    [[pageref queryOrderedByChild:@"0"] observeEventType:FIRDataEventTypeValue withBlock:^(FIRDataSnapshot * _Nonnull snapshot) {
        for (FIRDataSnapshot *data in snapshot.children)
        {
            
        }
    }];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sideMenuBtnTapped:(id)sender {
    [self presentLeftMenuViewController:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
