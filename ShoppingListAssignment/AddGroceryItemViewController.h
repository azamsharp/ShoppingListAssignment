//
//  AddGroceryItemViewController.h
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/12/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryItem.h"

@protocol AddGroceryItemViewControllerDelegete <NSObject>

-(void) addGroceryItemViewControllerDidAddItem: (GroceryItem *) groceryItem;

@end


@interface AddGroceryItemViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *groceryItemNameTextField;

@property (nonatomic, weak) id<AddGroceryItemViewControllerDelegete> delegate;

@end
