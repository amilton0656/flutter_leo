import 'package:intl/intl.dart';

//DateFormat("'Data por extenso:' d 'de' MMMM 'de' y", "pt_BR").format(data)
//DateFormat("'Dia da semana:' EEEE", "pt_BR").format(data)
// DateFormat('dd/MM/yyyy').format(tr.date),

String dataFormatada(DateTime data) {
  return DateFormat('dd/MM/yyyy').format(data);
}

String reaisFormatados(double valor) {
  return 'R\$ ${NumberFormat("#,##0.00", "pt_BR").format(valor)}';
}

String numeroFormatados(double valor) {
  return NumberFormat("#,##0.00", "pt_BR").format(valor);
}
