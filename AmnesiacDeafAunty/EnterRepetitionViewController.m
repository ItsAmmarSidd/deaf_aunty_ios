//
//  EnterRepetitionViewController.m
//  AmnesiacDeafAunty
//
//  Created by FORyouMEtoKNOW on 16/6/6.
//  Copyright © 2016年 FORyouMEtoKNOW. All rights reserved.
//

#import "EnterRepetitionViewController.h"
#import "ResultViewController.h"


@interface EnterRepetitionViewController ()
@property (weak, nonatomic) IBOutlet UILabel *auntyLabel;
@property (weak, nonatomic) IBOutlet UITextField *textSpeechField;

@end

@implementation EnterRepetitionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(self.speech);
    
    if([[self.speech uppercaseString] isEqualToString:self.speech]){
        
        self.auntyLabel.text = @"NO, WE CAN'T DO THAT!";
    } else if ([self.speech isEqualToString:@"I love ya, aunty"]){
        self.auntyLabel.text = @"Goodbye Dear";
    } else  {
        self.auntyLabel.text = @"HUH?! SPEAK UP, SANDRA!";
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultViewController *dest = segue.destinationViewController;
    dest.speech =self.auntyLabel.text;
    dest.timestorepeat = [self.textSpeechField.text intValue];
}
@end
