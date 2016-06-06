//
//  ViewController.m
//  AmnesiacDeafAunty
//
//  Created by FORyouMEtoKNOW on 16/6/6.
//  Copyright © 2016年 FORyouMEtoKNOW. All rights reserved.
//

#import "RootViewController.h"
#import "EnterRepetitionViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textSpeechField;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    EnterRepetitionViewController *dest = segue.destinationViewController;
    dest.speech =self.textSpeechField.text;
    
    
    ;
    
}

@end
