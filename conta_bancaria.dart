class ContaBancaria<T> {
  T numeroConta;
  double saldo;

  ContaBancaria(this.numeroConta, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente');
    }
  }

  @override
  String toString() {
    return 'Conta: $numeroConta, Saldo: R\$ $saldo';
  }
}

void main() {
  var contaCorrente = ContaBancaria<int>(12345, 1200.0);
  var contaPoupanca = ContaBancaria<String>('ABC123', 7000.0);

  contaCorrente.depositar(350);
  contaCorrente.sacar(260);

  contaPoupanca.depositar(1500);
  contaPoupanca.sacar(900);

  print(contaCorrente);
  print(contaPoupanca);
}
