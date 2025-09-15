import 'dart:io';

class Animal{
  String especie = " ";
  String nome = " ";
  int _codigoInterno = 0;

  Animal({required this.especie, required this.nome});
  String toString(){ //Mostra os dados do objeto quando faz um print
    return "$especie $nome";
  }

  int get vercodigo {//para ver o atributo privado
    return _codigoInterno;
  }

  set alterarcodigo(int novovalor){
    if(novovalor < 0){
      print("Codigo nao pode ser menor que 0");
    }else {
      _codigoInterno = novovalor;
    }

  }

  void fazerSom() {

  }
}

class Gato extends Animal{
  Gato ({required String especie, required String nome}):super(especie: especie, nome: nome);

  @override
  void fazerSom() {
    print("Miau Miau");
  }
}

class Cachorro extends Animal{
  Cachorro ({required String especie, required String nome}):super(especie: especie, nome: nome);
  
  @override
  void fazerSom(){
    print("Au Au");
  }
}

class Leao extends Animal{
  Leao ({required String especie, required String nome}):super(especie: especie, nome: nome);

  @override
  void fazerSom() {
    print("Roar roar");
  }
}

void main( ){
  List animais = [];
  List felinos = [];
  Gato gato1 = Gato(nome: "Garfield", especie: "Laranja");
  animais.add(gato1);
  felinos.add(gato1);

  print("Qual tipo de animal deseja ver ?");
  String opcao = stdin.readLineSync()!;
  if(opcao == "felino"){
    animais.forEach((i){
      print(i);
    });
  }

  gato1.fazerSom();

  print("Qual será o codigo interno do seu gato?");
  int newcode = int.parse(stdin.readLineSync()!);

  gato1.alterarcodigo = newcode;

  print("Este é o novo codigo ${gato1.vercodigo}");


}