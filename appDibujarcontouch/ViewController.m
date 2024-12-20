// ViewController.m
#import "ViewController.h"
#import "DibujarConTouch.h"

@interface ViewController () <UIColorPickerViewControllerDelegate>  // Protocolo para el selector de color

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Configurar el slider de grosor
    self.sliderGrosor.minimumValue = 1.0;
    self.sliderGrosor.maximumValue = 10.0;
    self.sliderGrosor.value = 3.0;  // Grosor predeterminado
    
    // Establecer color inicial del botón
    self.colorButton.backgroundColor = self.dibujarView.strokeColor;  // Configurar el color inicial
}

// Acción para cambiar el color
- (IBAction)cambiarColor:(id)sender {
    // Crear el selector de colores
    UIColorPickerViewController *colorPicker = [[UIColorPickerViewController alloc] init];
    colorPicker.delegate = self;
    
    // Mostrar el selector de color
    [self presentViewController:colorPicker animated:YES completion:nil];
}

// Delegate de UIColorPickerViewController
- (void)colorPickerViewControllerDidSelectColor:(UIColorPickerViewController *)viewController {
    // Cambiar el color de la vista de dibujo
    [self.dibujarView actualizarColor:viewController.selectedColor];
    
    // Actualizar el color del botón de color para reflejar el color seleccionado
    self.colorButton.backgroundColor = viewController.selectedColor;
}

// Acción para cambiar el grosor
- (IBAction)cambiarGrosor:(id)sender {
    CGFloat nuevoGrosor = self.sliderGrosor.value;
    [self.dibujarView actualizarGrosor:nuevoGrosor];  // Cambiar el grosor en la vista de dibujo
}

@end
