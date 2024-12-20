//
//  Graficos.h
//  appGraficos1
//
//  Created by Guest User on 25/10/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Graficos : UIView
@property (weak, nonatomic) IBOutlet UITextField *textFieldx1;

@property (weak, nonatomic) IBOutlet UITextField *textFieldx2;

@property (weak, nonatomic) IBOutlet UITextField *textFieldy1;


@property (weak, nonatomic) IBOutlet UITextField *textFieldy2;
- (IBAction)buttonDibujarLinea:(id)sender;

@end

NS_ASSUME_NONNULL_END
