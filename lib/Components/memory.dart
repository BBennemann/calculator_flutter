class Memory {
  String _value = '0'; //Valor mostrado na tela
  List<double> numeros = [0.0, 0.0]; //Numeros para as operações
  int indice = 0; //O indice dos numeros
  String comando = ''; //Salva se um comando for apertado
  List<String> comandos = ['C', '%', '/', '*', '-', '+', '=']; //Lista dos possiveis comandos

  void applyCommand(String command) { //Texto que vem dos botoes

    isCommand(command);

    isZero(command);

    hasDot(command);

    if (comandos.contains(command)) {
      numeros[indice] = double.parse(_value.substring(0, _value.length-1));
      if (indice == 0) {
        indice = 1;
      }
      if (comando == '') {
        comando = command;
        if (comando == 'C') {
          limpar();
        } else if (comando == '=') {
          igual();
        }
      } else {
        switch(comando) {
          case '+':
            soma();
          case '-':
            subtracao();
          case '/':
            divisao();
          case '*':
            multiplicacao();
        }
        comando = _value.substring(_value.length-1, _value.length);
        switch(comando) {
          case '+':
            _value = '${numeros[0]}+';
          case '-':
            _value = '${numeros[0]}-';
          case '/':
            _value = '${numeros[0]}/';
          case '*':
            _value = '${numeros[0]}*';
          case '=':
            igual();
          case 'C':
            limpar();
        }
      }
    }
  }

  void isCommand(String command) {
    if (comandos.contains(_value.substring(_value.length-1, _value.length))) {
      if (command == '.') {
        _value = '0';
      } else {
        _value = '';
      }
    }
  }

  void isZero(String command) {
    if ((_value == '0' && command != '.')) {
      _value = '';
    }
  }

  void hasDot(String command) {
    if (!_value.contains('.')) {
      _value += command;
    } else {
      if (command == '.') {
        _value = _value;
      } else {
        _value += command;
      }
    }
  }

  void igual() {
    _value = numeros[0].toString();
  }

  void soma() {
    double n = numeros[0] + numeros[1];
    numeros[0] = n;
    numeros[1] = 0;
  }

  void subtracao() {
    double n = numeros[0] - numeros[1];
    numeros[0] = n;
    numeros[1] = 0;
  }

  void multiplicacao() {
    double n = numeros[0] * numeros[1];
    numeros[0] = n;
    numeros[1] = 0;
  }

  void divisao() {
    double n = numeros[0] / numeros[1];
    numeros[0] = n;
    numeros[1] = 0;
  }

  void limpar() {
    indice = 0;
    _value = '0';
    numeros[0] = 0;
    numeros[1] = 0;
  }

  String getValue() {
    return _value;
  }
}