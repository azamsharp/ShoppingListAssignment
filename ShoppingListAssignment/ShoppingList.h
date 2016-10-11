//
//  ShoppingList.h
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ShoppingList : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,strong) UIColor *color;
@property (nonatomic,copy) NSString *storeNumber;

@end
