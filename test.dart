import 'package:test/test.dart';
import 'conta_bancaria.dart';

void main() {
  group('Teste ContaBancaria', () {
    test('Depositar em Conta Corrente', () {
      var contaCorrente = ContaBancaria<int>(12345, 1000.0);
      contaCorrente.depositar(500);
      expect(contaCorrente.saldo, 1500.0);
    });

    test('Sacar de Conta Corrente', () {
      var contaCorrente = ContaBancaria<int>(12345, 1000.0);
      contaCorrente.sacar(200);
      expect(contaCorrente.saldo, 800.0);
    });

    test('Sacar valor superior ao saldo', () {
      var contaPoupanca = ContaBancaria<String>('ABC123', 5000.0);
      contaPoupanca.sacar(6000);
      expect(contaPoupanca.saldo, 5000.0); // O saldo deve permanecer o mesmo
    });
  });
}
