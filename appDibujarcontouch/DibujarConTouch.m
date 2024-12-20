#import "DibujarConTouch.h"
#import "Trazo.h"

@implementation DibujarConTouch {
    NSMutableArray *trazos;  // Almacenar todos los trazos
    UIBezierPath *currentPath;  // El trazo actual
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self setMultipleTouchEnabled:NO];  // Deshabilitar toques múltiples
        [self setBackgroundColor:[UIColor whiteColor]];  // Fondo blanco
        trazos = [NSMutableArray array];  // Inicializar el arreglo de trazos
        [self iniciarNuevoPath];  // Inicializar el path actual
    }
    return self;
}

// Iniciar un nuevo path (cuando cambia el grosor o color)
- (void)iniciarNuevoPath {
    currentPath = [UIBezierPath bezierPath];  // Crear un nuevo path
    [currentPath setLineWidth:_lineWidth];  // Establecer el grosor
}

// Dibuja el contenido en la vista
- (void)drawRect:(CGRect)rect {
    // Dibujar todos los trazos almacenados
    for (Trazo *trazo in trazos) {
        [trazo.color setStroke];  // Establecer el color del trazo
        [trazo.path stroke];  // Dibujar el trazo
    }

    // Asegurarse de que el path actual también se dibuje
    if (currentPath) {
        [_strokeColor setStroke];  // Establecer el color del trazo actual
        [currentPath stroke];  // Dibujar el trazo actual
    }
}

// Se llama cuando el usuario toca la pantalla
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self iniciarNuevoPath];  // Iniciar un nuevo path para el trazo actual
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    [currentPath moveToPoint:p];  // Mover el path al punto de inicio
    [self setNeedsDisplay];  // Solicitar una nueva actualización de la vista
}

// Se llama cuando el usuario mueve el dedo por la pantalla
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    [currentPath addLineToPoint:p];  // Agregar una línea al path actual
    [self setNeedsDisplay];  // Solicitar una nueva actualización de la vista
}

// Se llama cuando el usuario deja de tocar la pantalla
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // Guardar el trazo cuando se termina de dibujar
    Trazo *nuevoTrazo = [[Trazo alloc] initWithPath:currentPath color:_strokeColor grosor:_lineWidth];
    [trazos addObject:nuevoTrazo];  // Agregar el trazo a la lista
    [self setNeedsDisplay];  // Solicitar una nueva actualización de la vista
}

// Método para borrar el contenido dibujado
- (void)borrar {
    [trazos removeAllObjects];  // Eliminar todos los trazos
    [self setNeedsDisplay];  // Solicitar una nueva actualización de la vista
}

// Acción para el botón de borrar
- (IBAction)borrarBoton:(id)sender {
    [self borrar];  // Llamar al método de borrar
}

// Método para actualizar el grosor
- (void)actualizarGrosor:(CGFloat)grosor {
    _lineWidth = grosor;
    [self iniciarNuevoPath];  // Crear un nuevo path con el nuevo grosor
    [self setNeedsDisplay];  // Solicitar una nueva actualización de la vista
}

// Método para actualizar el color
- (void)actualizarColor:(UIColor *)color {
    _strokeColor = color;
    [self iniciarNuevoPath];  // Crear un nuevo path con el nuevo color
    [self setNeedsDisplay];  // Solicitar una nueva actualización de la vista
}

@end
