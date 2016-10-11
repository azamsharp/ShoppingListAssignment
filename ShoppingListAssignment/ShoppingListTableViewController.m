//
//  ShoppingListTableViewController.m
//  ShoppingListAssignment
//
//  Created by Mohammad Azam on 10/11/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

#import "ShoppingListTableViewController.h"

@interface ShoppingListTableViewController ()

@end

@implementation ShoppingListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    shoppingLists = [[NSMutableArray alloc]init];
    
    ShoppingList *wholeFoods = [[ShoppingList alloc]init];
    wholeFoods.name = @"Whole Foods";
    wholeFoods.color= [UIColor greenColor];
    wholeFoods.storeNumber=@"5432";
    [shoppingLists addObject:wholeFoods];
    
    
    ShoppingList *farmerJack = [[ShoppingList alloc]init];
    farmerJack.name = @"Farmer Jack";
    farmerJack.color = [UIColor redColor];
    farmerJack.storeNumber=@"3254";
    [shoppingLists addObject:farmerJack];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return shoppingLists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
    ShoppingList *thisList = shoppingLists[indexPath.row];
    cell.textLabel.text = thisList.name;
    cell.detailTextLabel.text = thisList.storeNumber;
    
    cell.backgroundColor = thisList.color;
    
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"showGroceryItems"]) {

        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        ShoppingList *shoppingList = shoppingLists[indexPath.row];
        GroceryItemsTableViewController *controller = segue.destinationViewController;
        controller.selectedShoppingList = shoppingList;
        
        
    } else {
        // person clicked on the add button
        
        AddShoppingListViewController *addShoppingListViewController = segue.destinationViewController;
        addShoppingListViewController.delegate = self;
    }
    
}

-(void) addShoppingListViewControllerDidAddShoppingList:(ShoppingList *)shoppingList {
    
    [shoppingLists addObject:shoppingList];
    [self.tableView reloadData];
    
    NSLog(@"addShopingListViewControllerAddShoppingList fired");
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
