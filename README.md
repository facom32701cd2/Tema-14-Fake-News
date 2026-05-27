# Tema 14 - Fake News e Informação Online

Projeto da disciplina **FACOM32701 - Ciência de Dados II**, com foco em técnicas de aprendizado não supervisionado aplicadas a dados de checagem de fatos e desinformação online.

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

## Objetivo

Analisar conteúdos de checagem de fatos brasileiros por meio de técnicas não supervisionadas, incluindo análise exploratória, pré-processamento textual, agrupamento de conteúdos, mineração de padrões frequentes e detecção de anomalias.

---

## Dataset

O projeto utiliza o dataset **FactCenter**, disponibilizado pelos autores do artigo **A Comprehensive Dataset of Brazilian Fact-Checking Stories**.

- **Arquivo local:** `dataset/central_de_fatos.csv`
- **Fonte do artigo:** https://journals-sol.sbc.org.br/index.php/jidm/article/view/2354
- **Dataset original:** https://doi.org/10.5281/zenodo.5191798
- **Quantidade de instâncias:** 11.647 checagens de fatos
- **Período dos dados:** julho de 2013 a maio de 2021
- **Agências:** Agência Lupa, Aos Fatos, Boatos.org, Comprova, Estadão Verifica e Fato ou Fake
- **Campos principais:** `url`, `source_name`, `title`, `subtitle`, `publication_date`, `text_news`, `image_link`, `video_link`, `authors`, `categories`, `tags` e `verdict_label`

---

## Etapas do projeto

| Etapa | Descrição |
|---|---|
| 001 | Coleta, carregamento, limpeza e pré-processamento dos dados |
| 002 | Análise exploratória, estatísticas descritivas e visualizações |
| 003 | Aplicação e avaliação de algoritmos não supervisionados |
| 004 | Mineração de padrões frequentes, detecção de anomalias e conclusões |

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

As dependências do projeto devem estar listadas no arquivo `requirements.txt`.

Principais bibliotecas previstas:

```txt
pandas
numpy
matplotlib
seaborn
scikit-learn
jupyter
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

```bash
make setup
```

O comando `make setup` executa automaticamente as seguintes etapas:

1. Instala a versão definida do Python via `pyenv`, caso ainda não esteja instalada.
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

Também é possível configurar o projeto utilizando diretamente o Python instalado no sistema.

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
