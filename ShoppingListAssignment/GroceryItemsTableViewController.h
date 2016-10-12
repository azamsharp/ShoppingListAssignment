//
//  GroceryItemsTableViewController.h
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingList.h"
#import "AddGroceryItemViewController.h"
#import "GroceryItem.h" 

@interface GroceryItemsTableViewController : UITableViewController<AddGroceryItemViewControllerDelegete>
{
    NSMutableArray *groceryItems; 
}

@property (nonatomic,strong) ShoppingList *selectedShoppingList;

@end
