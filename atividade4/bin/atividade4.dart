import 'package:atividade4/atividade4.dart' as atividade4;

void main() {
  Produto produto1 = Produto("Notebook", 4500.00, 10, "123456789", "Notebook gamer de alta performance");
  Produto produto2 = Produto("Mouse", 150.00, 50, "987654321");

  produto1.descricao = "Notebook gamer com processador i7 e RTX 4060.";

  print("Antes da venda:");
  produto1.exibirDetalhes();
  produto2.exibirDetalhes();

  produto1.vender(3);
  print("\nVenda do Notebook (3 unidades)");

  produto2.vender(60);
  print("Venda do Mouse (60 unidades)");

  print("\nApós a venda:");
  produto1.exibirDetalhes();
  produto2.exibirDetalhes();

  CarrinhoDeCompras carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(produto1);
  carrinho.adicionarProduto(produto2);
  carrinho.exibirCarrinho();
}

class Produto {
  String nome;
  double preco;
  int quantidadeEmEstoque;
  String codigoBarras;
  String? descricao;

  Produto(this.nome, this.preco, this.quantidadeEmEstoque, this.codigoBarras, [this.descricao]);

  String get getNome => nome;
  double get getPreco => preco;
  int get getQuantidadeEmEstoque => quantidadeEmEstoque;
  String get getCodigoBarras => codigoBarras;
  String? get getDescricao => descricao;

  set setQuantidadeEmEstoque(int novaQuantidade) {
    if (novaQuantidade >= 0) {
      quantidadeEmEstoque = novaQuantidade;
    } else {
      print("Quantidade em estoque não pode ser negativa.");
    }
  }

  bool vender(int quantidade) {
    if (quantidade <= 0) {
      print('A quantidade deve ser maior que zero.');
      return false;
    }
    if (quantidade > quantidadeEmEstoque) {
      print('Estoque insuficiente para vender $quantidade unidades de $nome. Estoque disponível: $quantidadeEmEstoque.');
      return false;
    }
    quantidadeEmEstoque -= quantidade;
    print('$quantidade unidades de $nome vendidas com sucesso. Estoque restante: $quantidadeEmEstoque.');
    return true;
  }

  void reporEstoque(int quantidade) {
    if (quantidade > 0) {
      quantidadeEmEstoque += quantidade;
      print("$quantidade unidades de $nome adicionadas ao estoque. Estoque atual: $quantidadeEmEstoque.");
    } else {
      print("A quantidade de reposição deve ser maior que zero.");
    }
  }

  void exibirDetalhes() {
    print("\nInformações do produto: ");
    print("Nome: $nome");
    print("Código de Barras: $codigoBarras");
    print("Preço: R\$$preco");
    print("Estoque: $quantidadeEmEstoque unidades");
    if (descricao == null){
      print("Descrição indisponível");
    } else {
      print("Descrição: $descricao");
    }
  }
}

class CarrinhoDeCompras {
  List<Produto> produtos = [];

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
    print("Produto ${produto.nome} adicionado ao carrinho.");
  }

  void removerProduto(Produto produto) {
    if (produtos.contains(produto)) {
      produtos.remove(produto);
      print("Produto ${produto.nome} removido do carrinho.");
    } else {
      print("Produto ${produto.nome} não está no carrinho.");
    }
  }

  void exibirCarrinho() {
    print("\nItens no carrinho:");
    if (produtos == []) {
      print("O carrinho está vazio.");
    } else {
      for (var produto in produtos) {
        print("- Nome: ${produto.nome} | Preço: R\$${produto.preco}");
      }
    }
  }
}