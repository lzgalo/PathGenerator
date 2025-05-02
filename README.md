# Path Generator - Labirinto e Algoritmo de Busca

Este projeto implementa a geração de caminhos em um labirinto utilizando o algoritmo de busca em largura (BFS). Ele utiliza a biblioteca `matplotlibcpp` para visualizar o labirinto e o caminho gerado, bem como o ponto de início e fim do percurso.

## Funcionalidades

- Geração de um labirinto 10x10 com obstáculos.
- Implementação do algoritmo de busca em largura (BFS) para encontrar o caminho do ponto de partida até o ponto de chegada.
- Visualização gráfica do labirinto, do caminho encontrado e dos pontos de início e fim.

## Como Usar

1. Clone este repositório:
    ```bash
    git clone <URL_do_repositorio>
    cd PathGenerator
    ```

2. Instale as dependências (certifique-se de que `matplotlibcpp` e `Python` estejam configurados corretamente):
    ```bash
    sudo apt-get install python3-dev
    ```

3. Compile o código:
    ```bash
    make
    ```

4. Execute o programa:
    ```bash
    ./src/build/main
    ```

## Tecnologias

- C++
- BFS (Busca em Largura)
- matplotlibcpp (para visualização gráfica)
- Python (necessário para `matplotlibcpp`)
