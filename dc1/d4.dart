void adicionarData(DateTime data) {
  print('Data atual: ${data.day}/${data.month}/${data.year}');
  int adicionados = 0;

  while (adicionados < 18) {
    data = data.add(Duration(days: 1));
    if (data.weekday != DateTime.saturday && data.weekday != DateTime.sunday) {
      adicionados++;
    }
  }
  print('Data calculada: ${data.day}/${data.month}/${data.year}');
}

void main() {
  DateTime data = DateTime.now();
  adicionarData(data);
}