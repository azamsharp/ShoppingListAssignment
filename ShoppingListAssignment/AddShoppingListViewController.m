//
//  AddShoppingListViewController.m
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "AddShoppingListViewController.h"

@interface AddShoppingListViewController ()

@end

@implementation AddShoppingListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) saveButtonPressed {
    
    ShoppingList *shoppingList = [[ShoppingList alloc] init];
    shoppingList.name = self.storeNameTextField.text;
    shoppingList.storeNumber = self.storeNumberTextField.text;
    shoppingList.color = [UIColor purpleColor];
    
    [self.delegate addShoppingListViewControllerDidAddShoppingList:shoppingList];
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
