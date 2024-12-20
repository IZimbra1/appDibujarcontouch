// DibujarConTouch.h
// appDibujarcontouch
//
// Created by Guest User on 30/10/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DibujarConTouch : UIView


@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, assign) CGFloat lineWidth;     


- (void)borrar;


- (void)actualizarGrosor:(CGFloat)grosor;
- (void)actualizarColor:(UIColor *)color;

- (IBAction)borrarBoton:(id)sender;

@end

NS_ASSUME_NONNULL_END
