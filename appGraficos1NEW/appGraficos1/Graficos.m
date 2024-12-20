//
//  Graficos.m
//  appGraficos1
//
//  Created by Guest User on 25/10/24.
//

#import "Graficos.h"

@implementation Graficos


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    /*
    // Drawing code
    CGRect vista = [self bounds];
    CGContextRef canvas = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(canvas, [UIColor purpleColor].CGColor);
    
    // CGContextSetLineWidth(canvas, 5.5);
    CGContextMoveToPoint(canvas,([[UIScreen mainScreen]bounds].size.width)/2,0);
    CGContextAddLineToPoint(canvas, 0, ([[UIScreen mainScreen]bounds].size.height)/2);
    
    CGContextMoveToPoint(canvas,([[UIScreen mainScreen]bounds].size.width)/2,0);
    CGContextAddLineToPoint(canvas, [[UIScreen mainScreen]bounds].size.width, ([[UIScreen mainScreen]bounds].size.height)/2);
    
    CGContextMoveToPoint(canvas,[[UIScreen mainScreen]bounds].size.width, ([[UIScreen mainScreen]bounds].size.height)/2);
    CGContextAddLineToPoint(canvas, ([[UIScreen mainScreen]bounds].size.width)/2, ([[UIScreen mainScreen]bounds].size.height));
    
    CGContextMoveToPoint(canvas,0, ([[UIScreen mainScreen]bounds].size.height)/2);
    CGContextAddLineToPoint(canvas, ([[UIScreen mainScreen]bounds].size.width)/2, ([[UIScreen mainScreen]bounds].size.height));
    
    
  
    
    
    
    
    
    
     //RECTANGULO
     CGRect rectangulo = CGRectMake(200, 200, 100, 200);
     
     CGContextAddRect(canvas, rectangulo);
     CGContextStrokePath(canvas);
     CGContextSetFillColorWithColor(canvas, [UIColor systemPurpleColor].CGColor);
     CGContextFillRect(canvas, rectangulo);
     
    //CURVA DE BEZIER
    CGContextMoveToPoint(canvas, 50, 50);
    CGContextAddCurveToPoint(canvas, 0, 50, 300, 250, 300, 400);
    CGContextStrokePath(canvas);
    
    
    //curva de bezier cuadratica
    CGContextMoveToPoint(canvas, 100, 100);
    CGContextAddQuadCurveToPoint(canvas, vista.size.width/2.0, vista.size.height/2, 300, 100);
    
    CGContextStrokePath(canvas);
    
    
    */
}
- (IBAction)botonDibujar:(id)sender {
 
    
    //obtener los valores desde la interface principal
    
    
    
    
}

- (IBAction)buttonDibujarLinea:(id)sender {
    
    
    CGRect vista = [self bounds];
    CGContextRef canvas = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(canvas, 5.5);
    
   float  p1 = [self.textFieldx1.text intValue];
    
    
    float p2 = [self.textFieldx2.text intValue];
    
    
     float p3= [self.textFieldy1.text intValue];
    
    
    
     float p4= [self.textFieldy2.text intValue];
    CGContextSetStrokeColorWithColor(canvas, [UIColor blueColor].CGColor);
    
    CGContextMoveToPoint(canvas, p1, p2);
    CGContextAddLineToPoint(canvas, p3, p4);
    
    CGContextStrokePath(canvas);
    
}
@end
