//
//  ViewController.m
//  KVO-Demo
//
//  Created by FAN WENBIN on 14-2-24.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _textField.delegate = self;
    
    [self addObserver:self forKeyPath:@"items" options:0 context:nil];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_textField resignFirstResponder];
    
    [self willChangeValueForKey:@"items"];
    [self didChangeValueForKey:@"items"];
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    [_textView setText:_textField.text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
