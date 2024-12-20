//
//  Trazo.m
//  appDibujarcontouch
//
//  Created by jimbo on 16/12/24.
//


#import "Trazo.h"

@implementation Trazo

- (instancetype)initWithPath:(UIBezierPath *)path color:(UIColor *)color grosor:(CGFloat)grosor {
    self = [super init];
    if (self) {
        _path = path;
        _color = color;
        _grosor = grosor;
    }
    return self;
}

@end
