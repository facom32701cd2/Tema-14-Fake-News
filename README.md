# Tema 14 – “Fake News e Informação Online”

---

## Integrantes do grupo

| Nome | Matrícula |
|---|---|
| Felipe Duarte Rodrigues | 12311BSI213 |
| Gabriel Augusto Paiva | 12311BSI245 |
| João Pedro Zanetti | 12311BSI230 |
| Marcelo Gabriel Milani | 12311BSI251 |
| Marcos Antônio da Silva Junior | 12311BSI256 |

---

## Pré-requisitos

Antes de iniciar a instalação, verifique se os seguintes recursos estão instalados na máquina:

- Git
- Make
- Python 3.13 ou superior
- pip

Para a instalação utilizando `pyenv`, também é necessário ter o `pyenv` instalado e configurado corretamente no terminal.

---

## Dependências

As dependências do projeto devem estar listadas no arquivo `requirements.txt`:

```txt
pandas
matplotlib
seaborn
```

---

## Instalação utilizando pyenv

Esta abordagem é recomendada quando se deseja controlar a versão do Python utilizada no projeto.

### 1. Clonar o repositório

```bash
git clone <url-do-repositorio>
cd <nome-do-projeto>
```

### 2. Executar o setup do projeto

Execute o comando abaixo informando a versão desejada do Python:

```bash
make setup
```

O comando `make setup` executa automaticamente as seguintes etapas:

1. Instala a versão informada do Python via `pyenv`, caso ainda não esteja instalada.
2. Define a versão local do Python no projeto.
3. Cria o ambiente virtual local na pasta `.venv`.
4. Atualiza `pip`, `setuptools` e `wheel`.
5. Instala as dependências listadas em `requirements.txt`.

### 3. Ativar o ambiente virtual

```bash
source .venv/bin/activate
```

---

## Instalação alternativa sem pyenv

Também é possível configurar o projeto utilizando diretamente o Python instalado no sistema, sem utilizar `pyenv`.

### 1. Clonar o repositório

```bash
git clone <url-do-repositorio>
cd <nome-do-projeto>
```

### 2. Verificar a versão do Python

```bash
python3 --version
```

Recomenda-se utilizar Python 3.13 ou superior.

### 3. Criar o ambiente virtual local

```bash
python3 -m venv .venv
```

### 4. Ativar o ambiente virtual

```bash
source .venv/bin/activate
```

### 5. Atualizar ferramentas básicas

```bash
pip install --upgrade pip setuptools wheel
```

### 6. Instalar as dependências

```bash
pip install -r requirements.txt
```

---

## Comandos disponíveis no Makefile

| Comando | Descrição |
|---|---|
| `make setup` | Instala o Python via `pyenv`, cria o ambiente virtual e instala as dependências |
| `make install` | Instala as dependências do projeto |
| `make freeze` | Atualiza o arquivo `requirements.txt` com as versões instaladas |
| `make clean` | Remove o ambiente virtual `.venv` |

---

## Observações

A pasta `.venv` contém o ambiente virtual local do projeto e não deve ser versionada no Git.

O arquivo `.python-version`, gerado pelo `pyenv`, indica qual versão do Python deve ser utilizada localmente no projeto.
