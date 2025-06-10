/* 
  uma stream representa uma fonte de eventos/dados que ocorrem ao longo do tempo
  QUANDO USAR 
  - quando você precisa escutar atualizaçoes contínuas.
  - ex: GPS, mensagens de chat, digitalização em tempo real, eventos de usuário 
  
  CARACTERISTICAS
  - pode emitir valores com yield
  - pode durar indefinidamente
  - pode ser usada com listen ou await for
  - podemos usar async* para declarar funções assincronas que retornam uma stream
 */

//exemplo 1 - contador de tempo
/* 
Stream<int> contarTempo() async*{
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // yield serve como um emissor, ele emite a nova informação para a stream, como se fosse um return. Porém sem finalizar a função
  }
}

//exemplo 2 - simulação de chat
Stream<String> mensagemChat() async*{
  yield "oi";
  await Future.delayed(Duration(seconds: 1));
  yield "tudo bem";
  await Future.delayed(Duration(seconds: 1));
  yield "sim e vc?";
  await Future.delayed(Duration(seconds: 1));
  yield "que bom";
  await Future.delayed(Duration(seconds: 1));
  yield "tchau.";
}

void main(List<String> args) {
/*   contarTempo().listen(
    (event) => print("Contagem: $event"),
    onDone: () => print("Stream finalizada"),
  ); */

  mensagemChat().listen(
    (mensagem) => print(mensagem),
    onDone: () => print("Fim do chat"),
  ); 
}
  */

  //exemplos com controller de erro try catch
  Stream<int> contarTempo() async*{
    try {
      for (var i = 0; i < 10; i++) {
        await Future.delayed(Duration(seconds: 1));
        if (i == 3) {
          throw Exception("erro ao contar número: $i");
        }
        yield i;
      }
    } catch (e) {
      print("Erro no contador de tempo: $e");
    }
  }

  void main(List<String> args) {
  contarTempo().listen(
    (event) => print("Número : $event"),
    onError: (erro) => print(erro),
    onDone: () => print("finalizado"),
  );
}