class SalvarDados{
  String nome;
  String email;
  String senha;
  String endereco;
  int numero; 

   SalvarDados(this.email, this.endereco, this.nome, this.numero, this.senha);

   Map<String,dynamic> toMap(){
     var map  = <String, dynamic>{
       'nome' : nome,
       'email' : email,
       'senha' : senha,
       'endereco' : endereco,
       'numero' : numero
     };
     return map;
   }

   SalvarDados.fromMap(Map<String,dynamic> map){
     nome = map['nome'];
     email = map['email'];
     senha = map['senha'];
     endereco = map['endereco'];
     numero = map['numero'];
   }

   @override
   String toString() {
   return "SalvarDados => (nome: $nome, email: $email, senha: $senha, endereco: $endereco, numero: $numero)";
    }

}

