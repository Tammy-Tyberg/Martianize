//
//  ViewController.m
//  Martianize
//
//  Created by Tammy Tyberg on 1/20/16.
//  Copyright © 2016 Tammy Tyberg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *name;

@property (weak, nonatomic) IBOutlet UITextField *martianName;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [ self.name stringByAppendingString:@"bob"];
    
    NSLog(@"%@", self.name);
}
- (IBAction)martianizeMe:(id)sender {
    
   
    
  //NSString *names =   self.martianName.text;
    
    NSMutableString *change = [NSMutableString stringWithString:self.martianName.text];
    
    
    NSLog(@"testing o%@", change);
    
    if([change length] > 1){
    
    if([change hasPrefix:@"a"] ||  [change hasPrefix:@"e"] || [change hasPrefix:@"i"] ||  [change hasPrefix:@"o"] || [change hasPrefix:@"u"] ){
        
    
        NSLog(@"start witha  value %@", change);
        
        if([change hasSuffix:@"a"] ||  [change hasSuffix:@"e"] || [change hasSuffix:@"i"] || [change hasSuffix:@"o"] || [change hasSuffix:@"u"] ){
            
            NSLog(@" start with a vowel but  ends with a vowel %@", change);
            
            
            [change substringFromIndex:1];//get rid of first letter
            [change substringFromIndex:[change length]-1]; //get rid of last letter
            
            NSLog(@" name after trimming front and back letter %@", change);
            
            
            
            
            
            
            
        }else{
            
            NSLog(@" start with a vowel but ends with a consosnant %@", change);
            
        }
        
        
    }else{
        
                    NSLog(@"starts with a consosnant %@", change);
        
        if([change hasSuffix:@"a"] ||  [change hasSuffix:@"e"] || [change hasSuffix:@"i"] || [change hasSuffix:@"o"] || [change hasSuffix:@"u"] ){
            
            NSLog(@"starts with a consosnant  ends with a vowel %@", change);
            
        }else{
            
            NSLog(@"starts with a consosnant  ends with a consosnant %@", change);
        }
    
    
    }
    
    }
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //done editing
    [self.view endEditing:YES];
    
    
}

@end
