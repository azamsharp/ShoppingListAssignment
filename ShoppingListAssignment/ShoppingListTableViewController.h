//
//  ShoppingListTableViewController.h
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//
#import "ShoppingList.h"
#import <UIKit/UIKit.h>
#import "GroceryItemsTableViewController.h"
#import "AddShoppingListViewController.h" 

@interface ShoppingListTableViewController : UITableViewController<AddShoppingListViewControllerDelegate>
{
    // Array
    NSMutableArray *shoppingLists;
}
@end
