import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

class Fruit {
  String NameFruit;
  int PriceFruit;
  int QuantityFruit;
  String colorFruit;
  String sizeFruit;
  bool? isMature;

  Fruit(this.colorFruit, this.NameFruit, this.PriceFruit, this.QuantityFruit,
      this.sizeFruit,
      {this.isMature}); //constructor

  Fruit.minusculas(this.colorFruit, this.NameFruit, this.PriceFruit,
      this.QuantityFruit, this.sizeFruit,
      {this.isMature}) {
    this.NameFruit = this.NameFruit.toLowerCase();
    this.colorFruit = this.colorFruit.toUpperCase();
  }

  valueForQuantity() {
    return this.PriceFruit * this.QuantityFruit;
  }
}

void Teste() {
  return print('Teste');
}

void TesteIsMadura(bool isMadura) {
  if (isMadura) {
    return print('A fruta está madura');
  } else {
    return print('A fruta não está madura');
  }
}

colorsFruit(String colorFruit) {
  return print('A cor da fruta é $colorFruit');
}

infoFruit(
    {required String NameFruit,
    required int PriceFruit,
    required int QuantityFruit,
    String? colorFruit,
    required String sizeFruit,
    bool? isMature}) {
  return print(
      'A fruta é $NameFruit, o preço é $PriceFruit, a quantidade é $QuantityFruit, a cor é $colorFruit, o tamanho é $sizeFruit e está madura? $isMature');
}

void main(List<String> arguments) {
  String NameFruit = 'Maçã';
  int PriceFruit = 2;
  int QuantityFruit = 10;
  String colorFruit = 'Vermelha';
  String sizeFruit = 'Média';
  bool isMature = true;

  Fruit apple = Fruit(
      colorFruit, NameFruit, PriceFruit, QuantityFruit, sizeFruit,
      isMature: isMature);
  Fruit minusculas = Fruit.minusculas(
      colorFruit, NameFruit, PriceFruit, QuantityFruit, sizeFruit,
      isMature: isMature);
  print(apple.NameFruit);
  int value = apple.valueForQuantity();
  print("Fruit value per quantity: ${value}");
  print(minusculas.colorFruit);
  apple.NameFruit = 'Banana';
  print('Nome modificado:' + ' ' + apple.NameFruit);

}
