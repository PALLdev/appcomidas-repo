import 'package:flutter/material.dart';

import './models/categoria.dart';
import './models/plato.dart';

const DUMMY_CATEGORIES = const [
  Categoria(
    id: 'c1',
    titulo: 'Italiano',
    bgColor: Colors.purple,
  ),
  Categoria(
    id: 'c2',
    titulo: 'Rapido y sencillo',
    bgColor: Colors.red,
  ),
  Categoria(
    id: 'c3',
    titulo: 'Hamburguesas',
    bgColor: Colors.orange,
  ),
  Categoria(
    id: 'c4',
    titulo: 'Aleman',
    bgColor: Colors.amber,
  ),
  Categoria(
    id: 'c5',
    titulo: 'Light & Lovely',
    bgColor: Colors.blue,
  ),
  Categoria(
    id: 'c6',
    titulo: 'Exotico',
    bgColor: Colors.green,
  ),
  Categoria(
    id: 'c7',
    titulo: 'Desayuno',
    bgColor: Colors.lightBlue,
  ),
  Categoria(
    id: 'c8',
    titulo: 'Asiatico',
    bgColor: Colors.lightGreen,
  ),
  Categoria(
    id: 'c9',
    titulo: 'Frances',
    bgColor: Colors.pink,
  ),
  Categoria(
    id: 'c10',
    titulo: 'Verano',
    bgColor: Colors.teal,
  ),
];

const DUMMY_PLATOS = const [
  Plato(
    id: 'm1',
    categorias: [
      'c1',
      'c2',
    ],
    nombre: 'Spaghetti con Salsa de Tomates',
    costo: Costo.Barato,
    dificultad: Dificultad.Simple,
    imagenUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    tiempoPreparacion: 20,
    ingredientes: [
      '4 Tomates',
      '1 cucharada de aceite de oliva',
      '1 cebolla',
      '250g de Spaguetis',
      'Especias',
      'Queso (opcional)'
    ],
    instrucciones: [
      'Cortar los tomates y la cebolla en trozos pequeños.',
      'Hierva un poco de agua - agréguele sal una vez que hierva.',
      'Pon los espaguetis en el agua hirviendo; deberían estar listos en unos 10 a 12 minutos.',
      'Mientras tanto, calentar un poco de aceite de oliva y añadir la cebolla cortada.',
      'Después de 2 minutos, agregue los trozos de tomate, sal, pimienta y sus otras especias.',
      'La salsa estará lista una vez que estén los espaguetis.',
      'Siéntase libre de agregar un poco de queso encima del plato terminado',
    ],
    esLibreDeGluten: false,
    esVegano: true,
    esVegetariano: true,
    esLibreDeLactosa: true,
  ),
  Plato(
    id: 'm2',
    categorias: [
      'c2',
    ],
    nombre: 'Tostada Hawaii',
    costo: Costo.Barato,
    dificultad: Dificultad.Simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    tiempoPreparacion: 10,
    ingredientes: [
      '1 rebanada de pan blanco',
      '1 rebanada de jamon',
      '1 rodaja de piña',
      '1-2 rebanadas de queso',
      'Mantequilla'
    ],
    instrucciones: [
      'Unte con mantequilla un lado del pan blanco',
      'Poner jamón, piña y queso sobre el pan blanco',
      'Hornea la tostada durante unos 10 minutos en el horno a 200 ° C'
    ],
    esLibreDeGluten: false,
    esVegano: false,
    esVegetariano: false,
    esLibreDeLactosa: false,
  ),
  Plato(
    id: 'm3',
    categorias: [
      'c2',
      'c3',
    ],
    nombre: 'Hamburguesa clásica',
    costo: Costo.NoTanCaro,
    dificultad: Dificultad.Simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    tiempoPreparacion: 45,
    ingredientes: [
      '300g corte de vacuno',
      '1 tomate',
      '1 Pepino',
      '1 cebolla',
      'Salsa de tomate',
      '2 bollos de hamburguesa'
    ],
    instrucciones: [
      'Forma 2 hamburguesas',
      'Freír las hamburguesas aprox 4 minutos por cada lado',
      'Freír rápidamente los bollos por 1 minuto a cada lado',
      'Untar los bollos con salsa de tomate',
      'Sirve la hamburguesa con tomate, pepino y cebolla'
    ],
    esLibreDeGluten: false,
    esVegano: false,
    esVegetariano: false,
    esLibreDeLactosa: true,
  ),
  Plato(
    id: 'm4',
    categorias: [
      'c4',
    ],
    nombre: 'Wiener Schnitzel',
    costo: Costo.Costoso,
    dificultad: Dificultad.Intermedia,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    tiempoPreparacion: 60,
    ingredientes: [
      '8 Chuletas de Ternera',
      '4 huevos',
      '200g de migas de pan',
      '100g de harina',
      '300 ml de mantequilla',
      '100g de aceite vegetal',
      'Sal',
      'Rodajas de limón'
    ],
    instrucciones: [
      'Ablande la ternera a unos 2-4 mm, y sal por ambos lados.',
      'En un plato plano, revuelva los huevos brevemente con un tenedor.',
      'Cubra ligeramente las chuletas con harina, luego sumérjalas en el huevo y, finalmente, cubra con pan rallado.',
      'Calentar la mantequilla y el aceite en una sartén grande (dejar que la grasa se caliente mucho) y freír los escalopes hasta que estén dorados por ambos lados.',
      'Asegúrese de mezclar la sartén con regularidad para que los escalopes estén rodeados de aceite y la migaja se vuelva esponjosa.',
      'Retirar y escurrir sobre papel de cocina. Freír el perejil en el aceite restante y escurrir.',
      'Coloque los escalopes en un plato caliente y sírvalos acompañados de perejil y rodajas de limón.'
    ],
    esLibreDeGluten: false,
    esVegano: false,
    esVegetariano: false,
    esLibreDeLactosa: false,
  ),
  Plato(
    id: 'm5',
    categorias: [
      'c2'
          'c5',
      'c10',
    ],
    nombre: 'Ensalada con salmon ahumado',
    costo: Costo.Costoso,
    dificultad: Dificultad.Simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    tiempoPreparacion: 15,
    ingredientes: [
      'Rúcula',
      'Hojas de lechuga',
      'Perejil',
      'Hinojo',
      '200g Salmón Ahumado',
      'Mostaza',
      'Vinagre balsámico',
      'Aceite de oliva',
      'Sal y pimienta'
    ],
    instrucciones: [
      'Lavar y cortar la ensalada y hierbas',
      'Cortar el salmón en cubitos',
      'Combinar mostaza, vinagre y aceite de oliva en una salsa',
      'Prepara la ensalada',
      'Agrega los cubitos de salmón y el aderezo'
    ],
    esLibreDeGluten: true,
    esVegano: false,
    esVegetariano: true,
    esLibreDeLactosa: true,
  ),
  Plato(
    id: 'm6',
    categorias: [
      'c6',
      'c10',
    ],
    nombre: 'Mousse de naranja',
    costo: Costo.Barato,
    dificultad: Dificultad.Dificil,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    tiempoPreparacion: 240,
    ingredientes: [
      '4 sobres de gelatina',
      '150ml de jugo de naranja',
      '80g Azúcar',
      '300g de yogurt',
      '200g de crema',
      'Cascara de naranja',
    ],
    instrucciones: [
      'Disolver la gelatina en una olla y poner al fuego',
      'Agrega jugo de naranja y azúcar',
      'Quita la olla del fuego',
      'Agrega 2 cucharadas de yogurt',
      'Revuelva la gelatina debajo del yogurt restante',
      'Enfriar todo en el frigorífico',
      'Batir la nata y levantarla debajo de la masa de naranja',
      'Vuelva a enfriar durante al menos 4 horas',
      'Servir con cascara de naranja',
    ],
    esLibreDeGluten: true,
    esVegano: false,
    esVegetariano: true,
    esLibreDeLactosa: false,
  ),
  Plato(
    id: 'm7',
    categorias: [
      'c7',
    ],
    nombre: 'Panqueques',
    costo: Costo.Barato,
    dificultad: Dificultad.Simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    tiempoPreparacion: 20,
    ingredientes: [
      '1 1/2 tazas de harina para todo uso',
      '3 1/2 cucharaditas de polvo para hornear',
      '1 cucharadita de sal',
      '1 cucharada de azúcar blanca',
      '1 1/4 tazas de leche',
      '1 huevo',
      '3 cucharadas de mantequilla derretida',
    ],
    instrucciones: [
      'En un bol grande, mezcle la harina, el polvo de hornear, la sal y el azúcar.',
      'Hacer un pozo en el centro y vertir la leche, el huevo y la mantequilla derretida; mezclar hasta que quede suave. ',
      'Caliente una plancha o sartén ligeramente engrasada a fuego medio alto.',
      'Vierta o coloque la masa en la plancha, usando aproximadamente 1/4 de taza para cada panqueque. Dorar por ambos lados y servir caliente.'
    ],
    esLibreDeGluten: true,
    esVegano: false,
    esVegetariano: true,
    esLibreDeLactosa: false,
  ),
  Plato(
    id: 'm8',
    categorias: [
      'c8',
    ],
    nombre: 'Creamy Indian Chicken Curry',
    costo: Costo.NoTanCaro,
    dificultad: Dificultad.Intermedia,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    tiempoPreparacion: 35,
    ingredientes: [
      '4 pechugas de pollo',
      '1 cebolla',
      '2 dientes de ajo',
      '1 pieza de jengibre',
      '4 cucharadas de almendras',
      '1 cucharadita de pimienta de cayena',
      '500 ml de leche de coco',
    ],
    instrucciones: [
      'Cortar y freír las pechugas de pollo.',
      'Cocinar la cebolla, el ajo y el jengibre hasta obtener una pasta y sofreír todo.',
      'Agrega especias y sofríe.',
      'Añadir pechuga de pollo + 250ml de agua y cocinar todo durante 10 minutos.',
      'Agrega leche de coco.',
      'Servir con arroz.'
    ],
    esLibreDeGluten: true,
    esVegano: false,
    esVegetariano: false,
    esLibreDeLactosa: true,
  ),
  Plato(
    id: 'm9',
    categorias: [
      'c9',
    ],
    nombre: 'Souffle de chocolate',
    costo: Costo.Barato,
    dificultad: Dificultad.Dificil,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    tiempoPreparacion: 45,
    ingredientes: [
      '1 cucharadita de mantequilla derretida',
      '2 cucharadas de azúcar blanca',
      '2 onzas de chocolate amargo al 70%, partido en pedazos',
      '1 cucharada de mantequilla',
      '1 cucharada de harina para todo uso',
      '4 1/3 cucharadas de leche fría',
      '1 pizca de sal',
      '1 pizca de pimienta de Cayena',
      '1 yema de huevo grande',
      '2 claras de huevo grandes',
      '1 pizca de crema tártara',
      '1 cucharada de azúcar blanca',
    ],
    instrucciones: [
      'Precaliente el horno a 190 ° C. Forre una bandeja para hornear con borde con papel pergamino. ',
      'Unte ligeramente el fondo y los lados de 2 moldes con 1 cucharadita de mantequilla derretida; cubrir la parte inferior y los lados hasta el borde. ',
      'Agregue 1 cucharada de azúcar blanca a los moldes. Gire los moldes hasta que el azúcar cubra todas las superficies. ',
      'Coloque los trozos de chocolate en un bol de metal.',
      'Coloque el tazón sobre una olla de aproximadamente 3 tazas de agua caliente a fuego lento.',
      'Derrita 1 cucharada de mantequilla en una sartén a fuego medio. Espolvorea harina. Batir hasta que la harina se incorpore a la mantequilla y la mezcla se espese. ',
      'Batir la leche fría hasta que la mezcla se vuelva suave y espesa. Transfiera la mezcla a un bol con chocolate derretido. ',
      'Agregue sal y pimienta de cayena. Mezclar bien. Agregue la yema de huevo y mezcle para combinar. ',
      'Deje el tazón sobre el agua caliente (no hirviendo a fuego lento) para mantener el chocolate caliente mientras bate las claras de huevo.',
      'Coloque 2 claras de huevo en un bol; agregue el crémor tártaro. Batir hasta que la mezcla comience a espesarse y una llovizna del batidor permanezca en la superficie aproximadamente 1 segundo antes de desaparecer en la mezcla. ',
      'Agregue 1/3 de azúcar y mezcle. Agregue un poco más de azúcar durante unos 15 segundos.',
      'agregue el resto del azúcar. Continúe batiendo hasta que la mezcla sea tan espesa como la crema de afeitar y tenga picos suaves, de 3 a 5 minutos. ',
      'Transfiera un poco menos de la mitad de las claras al chocolate.',
      'Mezclar hasta que las claras de huevo estén bien incorporadas al chocolate.',
      'Agregue el resto de las claras de huevo; doblar suavemente en el chocolate con una espátula, levantando desde el fondo y doblando. ',
      'Deja de mezclar después de que desaparezca la clara de huevo. Divida la mezcla entre 2 moldes preparados. Coloque los moldes en una bandeja para hornear preparada. ',
      'Hornee en horno precalentado hasta que las peleas se inflen y se hayan elevado por encima de la parte superior de los bordes, de 12 a 15 minutos.',
    ],
    esLibreDeGluten: true,
    esVegano: false,
    esVegetariano: true,
    esLibreDeLactosa: false,
  ),
  Plato(
    id: 'm10',
    categorias: [
      'c2',
      'c5',
      'c10',
    ],
    nombre: 'Ensalada de espárragos con tomate cherry',
    costo: Costo.Costoso,
    dificultad: Dificultad.Simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    tiempoPreparacion: 30,
    ingredientes: [
      'Espárragos Blancos y Verdes',
      '30g de piñones',
      '300g de tomates cherry',
      'Ensalada',
      'Sal, Pimienta y Aceite de Oliva'
    ],
    instrucciones: [
      'Lavar, pelar y cortar los espárragos.',
      'Cocinar en agua con sal.',
      'Salpimentar los espárragos.',
      'Asar los piñones.',
      'Corta los tomates por la mitad.',
      'Mezclar con espárragos, ensalada y aderezo.',
      'Servir con Baguette.'
    ],
    esLibreDeGluten: true,
    esVegano: true,
    esVegetariano: true,
    esLibreDeLactosa: true,
  ),
];
