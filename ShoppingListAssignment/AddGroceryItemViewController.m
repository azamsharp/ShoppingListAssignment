//
//  AddGroceryItemViewController.m
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/12/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "AddGroceryItemViewController.h"

@interface AddGroceryItemViewController ()

@end

@implementation AddGroceryItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction) saveButtonPressed {
    
    GroceryItem *groceryItem = [[GroceryItem alloc]init];
    groceryItem.name = self.groceryItemNameTextField.text;
    
    [self.delegate addGroceryItemViewControllerDidAddItem:groceryItem];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
