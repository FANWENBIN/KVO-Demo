//
//  ViewController.h
//  KVO-Demo
//
//  Created by FAN WENBIN on 14-2-24.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
