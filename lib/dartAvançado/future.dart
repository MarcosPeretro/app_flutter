/* 
  um future representa uma operação assincrona que retornará um único valor no futuro um erro

  QUANDO USAR 
  -quando você espera um único resultado
  - ex: buscar dados da internet, ler um arquivo uma única vez, salvar dados no banco

  CARACTERÍSTICAS
  - executa uma vez e finaliza
  - pode retornar sucess(then) ou erro (cathError)
  - pode ser aguardado com await
 */

//exemplo 1
Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => throw Exception("Falha ao buscar recursos"),
  );
}

//exemplo 2 - simular login
Future<bool> fazerLogin(String usuario, String senha) async {
  await Future.delayed(Duration(seconds: 2));
  if (usuario == "admin" && senha == "1234") {
    return true;
  }
  throw Exception("Usuário/senha não conferem");
}

//exemplo 3 - localização
Future<String> obterLocalizacao() async {
  await Future.delayed(Duration(seconds: 2));
  return "Lat: -23.0000 Long: -48.0000";
}

void main(List<String> args) async {
  /* exemplo 1  
 final dados = await fetchData();
  print(dados);
 */

  /* exemplo 2
  final sucesso = await fazerLogin("admin", "1234");
  print(sucesso); */

  /* exemplo 3 
  final local = await obterLocalizacao();
  print(local);
  */

  //tratando erros
  /*   try {
    //código a ser executado caso funcione
    final dados = await fetchData();
    print(dados);
  } catch (erro) {
    //código a ser executado caso falhe
    print(erro.toString());
  } */

  try {
    final sucesso = await fazerLogin("admin", "123");
    print(sucesso);
  } catch (e) {
    print("Erro no login: $e");
  }
}
