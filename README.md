# Sistema de Gerenciamento de Produtos em Dart

Este repositório contém a solução para a atividade de gerenciamento de produtos em Dart.

## Atividade

### 1. Criar a classe `Produto`:
- Atributos:
  - `nome` (String, obrigatório)
  - `preco` (double, obrigatório)
  - `quantidadeEmEstoque` (int, obrigatório)
  - `descricao` (String?, opcional)
- Construtor:
  - Recebe `nome`, `preco` e `quantidadeEmEstoque` como obrigatórios.
  - `descricao` é opcional.
- Métodos:
  - `vender(int quantidade)`: Reduz o estoque e retorna `true` se a venda for bem-sucedida, `false` caso contrário.
  - `reporEstoque(int quantidade)`: Aumenta o estoque.
- Getters e Setters:
  - Garantem `null safety` e controle de acesso aos atributos.

### 2. Testar a classe `Produto`:
- Criar instâncias com diferentes valores.
- Testar os métodos `vender` e `reporEstoque`.
- Utilizar getters e setters para modificar atributos.

### Extensões
- Adicionar mais atributos e métodos.
- Criar a classe `CarrinhoDeCompras`.
- Implementar persistência de dados.
- Adicionar tratamento de erros.

## Como Executar
1. Certifique-se de ter Dart instalado.
2. Clone o repositório e abra no VSCode.
3. Execute o seguinte comando no terminal: `dart run`

