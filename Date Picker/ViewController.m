//
//  ViewController.m
//  Date Picker
//
//  Created by Amol Tukaram Dhage on 09/12/16.
//  Copyright © 2016 AmolTDhage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    datePicker=[[UIDatePicker alloc]init];
    datePicker.datePickerMode=UIDatePickerModeDate;
    [self.dateSelectionTextField setInputView:datePicker];
    
    UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    [toolBar setTintColor:[UIColor grayColor]];
    
    UIBarButtonItem *doneButton=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(ShowSelectedDate)];

    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    [toolBar setItems:[NSArray arrayWithObjects:space,doneButton, nil]];
    
    [self.dateSelectionTextField setInputAccessoryView:toolBar];
}



-(void)ShowSelectedDate
{
    
    NSDateFormatter *forrmatter=[[NSDateFormatter alloc]init];
    [forrmatter setDateFormat:@"dd/MMM/YYYY"];
    
    
    self.dateSelectionTextField.text=[NSString stringWithFormat:@"%@",[forrmatter stringFromDate:datePicker.date]];
                                      
    [self.dateSelectionTextField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
