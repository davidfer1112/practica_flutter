class Perro {

  String _nombre;
  int _edad;


  Perro(this._nombre, this._edad);

  void ladrar(String _idioma, int _veces) {
    int _contador = 0;
    while (_contador < _veces) {
      if(_idioma == "es"){

        print(this._nombre+'  Guau!');
      }else if(_idioma == "en"){
        print(this._nombre+'  Woof!');
      }else{
        print(this._nombre+'  aa!');
      }
      _contador++;
      //print(_contador);
    }
  }

  //metodos get y set
  //Nombre
  String get nombre => _nombre; //get
  set nombre(String nombre) => _nombre = nombre; //set

  //Edad
  int get edad => _edad; //get
  set edad(int edad) => _edad = edad; //set

}

