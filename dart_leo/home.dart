import 'models/cliente.dart';
import 'models/produto.dart';
import 'models/venda.dart';
import 'models/venda_item.dart';

main() {
  var venda = Venda(
      cliente: Cliente(nome: 'AMILTON TESTE', cpf: '123.456.789-00'),
      itens: [
        VendaItem(
          quantidade: 30,
          produto: Produto(
            codigo: 1,
            nome: 'Lápis preto',
            preco: 6,
            desconto: 0.5,
          ),
        ),
        VendaItem(
          quantidade: 20,
          produto: Produto(
            codigo: 123,
            nome: 'Caderno',
            preco: 20,
            desconto: 0.25,
          ),
        ),
        VendaItem(
          quantidade: 100,
          produto: Produto(
            codigo: 52,
            nome: 'borracha',
            preco: 2,
            desconto: 0.5,
          ),
        )
      ]);

  print('O valor total da venda é : ${venda.valorTotal}');
  print('O nome do primeiro produto é ${venda.itens[0].produto!.nome}');
}
