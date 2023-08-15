
void main() {
  final List<Map<String, Object>> _perguntas =  [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': [
          {'texto':'Preto', 'pontuacao': 10}, 
          {'texto':'Vermelho', 'pontuacao': 5}, 
          {'texto':'Verde', 'pontuacao': 3}, 
          {'texto':'Branco', 'pontuacao': 1},
          ],
      },
      {
        'texto': 'Qual é o seu animal preferido?',
        'respostas': [
          {'texto':'Coelho', 'pontuacao': 10},
          {'texto':'Cobra', 'pontuacao': 5}, 
          {'texto':'Elefante', 'pontuacao': 3}, 
          {'texto':'Leão', 'pontuacao': 1},
          ],
      },
      {
        'texto': 'Qual é o seu instrutor preferido?',
        'respostas': [
          {'texto':'Maria', 'pontuacao': 10}, 
          {'texto':'João', 'pontuacao': 5}, 
          {'texto':'Leo', 'pontuacao': 3}, 
          {'texto':'Pedro', 'pontuacao': 1}
          ],
      },
    ];

    Set<String> aset = ({'aaq', 'bb', 'cc'});
    aset.add('xx');

    print(aset);

    void aa() {
  print('sldflsdjfsdf');
}

List aax = [1.3, 4.2, 9.1, 8.4, 5.3, 9.1];

var bbx = aax.where((nota) => nota > 7);
  
  print(aax.where((nota) => nota > 7));



}