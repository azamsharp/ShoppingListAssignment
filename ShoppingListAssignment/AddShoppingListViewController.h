//
//  AddShoppingListViewController.h
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingList.h"

@protocol AddShoppingListViewControllerDelegate <NSObject>

-(void) addShoppingListViewControllerDidAddShoppingList:(ShoppingList *) shoppingList;

@end

@interface AddShoppingListViewController : UIViewController

@property (nonatomic,weak) IBOutlet UITextField *storeNameTextField;
@property (nonatomic,weak) IBOutlet UITextField *storeNumberTextField;

@property (nonatomic,weak) id<AddShoppingListViewControllerDelegate> delegate;

@end
