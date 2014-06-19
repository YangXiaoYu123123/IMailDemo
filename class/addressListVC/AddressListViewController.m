//
//  AddressListViewController.m
//  IMailDemo
//
//  Created by YangXIAOYU on 14-6-19.
//  Copyright (c) 2014年 YangXIAOYU. All rights reserved.
//

#import "AddressListViewController.h"
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface AddressListViewController ()<ABPeoplePickerNavigationControllerDelegate>

@end

@implementation AddressListViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pushAddressBook:(id)sender {
    ABPeoplePickerNavigationController *people = [[ABPeoplePickerNavigationController alloc] init];
    people.peoplePickerDelegate = self;
    [self presentViewController:people animated:YES completion:^{
        
    }];
}

#pragma mark - ABPeoplePickerDelelgate
- (void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker{
    
}

- (BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person{
    return YES;
}
@end
