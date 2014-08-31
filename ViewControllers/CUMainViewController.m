//
//  CUMainViewController.m
//  CUArchitectureDemo
//
//  Created by yuguang on 29/8/14.
//  Copyright (c) 2014 lion. All rights reserved.
//

#import "CUMainViewController.h"
#import "CUDataDAO.h"
#import "CUDataModel.h"

@interface CUMainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@end

@implementation CUMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
      // Custom initialization
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  
  self.displayLabel.text = [[CUDataDAO selectData].data stringValue];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


// fix data inconsistenly
- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  self.displayLabel.text = [[CUDataDAO selectData].data stringValue];
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

@end