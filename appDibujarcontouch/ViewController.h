// ViewController.h
#import <UIKit/UIKit.h>

@class DibujarConTouch;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet DibujarConTouch *dibujarView;  // Referencia a la vista de dibujo
@property (weak, nonatomic) IBOutlet UISlider *sliderGrosor;  // Control deslizante para grosor
@property (weak, nonatomic) IBOutlet UIButton *colorButton;    // Botón para cambiar color

// Acción para cambiar el grosor
- (IBAction)cambiarGrosor:(id)sender;

// Acción para cambiar el color
- (IBAction)cambiarColor:(id)sender;

@end
