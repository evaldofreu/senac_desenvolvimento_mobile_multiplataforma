import 'dart:isolate';

void main() {
  ReceivePort minhaPorta =
      ReceivePort(); // porta para ouvir a comunicação vindo do processo filho
  Isolate.spawn<SendPort>(CalculoEmSegundoPlano, minhaPorta.sendPort);

  SendPort portaProcesso;

  minhaPorta.listen((message) async {
    if (message is SendPort) {
      portaProcesso = message; // processo
      portaProcesso
          .send(CalculoModel(32000, 0.4)); // enviando o dado para o processo
      for (int t = 0; t < 10; t++) {
        print("PROCESSO PRINCIPAL $t");
        await Future.delayed(Duration(milliseconds: 5));
      }
    } else {
      print("Mensagem do processo em segundo plano: $message");
    }
  });
}

Future<void> CalculoEmSegundoPlano(SendPort sendPort) async {
  ReceivePort minhaPortadeReceber = ReceivePort();
  sendPort.send(minhaPortadeReceber.sendPort);

  await for (var mensagem in minhaPortadeReceber) {
    CalculoModel calculo = mensagem;
    double total = 0;
    for (int i = 1; i < calculo.iteracoes; i++) {
      total += (i * calculo.fator);
    }
    sendPort.send("CALCULO EM SEGUNDO PLANO CONCLUÍDO: $total");
  }
}

class CalculoModel {
  CalculoModel(this.iteracoes, this.fator);
  final int iteracoes;
  final double fator;
}
