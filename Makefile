PYTHON_VERSION ?= 3.13.5
VENV_DIR := .venv
PYENV_ROOT := $(shell pyenv root 2>/dev/null)
PYTHON_BIN := $(PYENV_ROOT)/versions/$(PYTHON_VERSION)/bin/python
PIP := $(VENV_DIR)/bin/pip
PYTHON := $(VENV_DIR)/bin/python

.PHONY: help setup install clean venv check-pyenv freeze

help:
	@echo "Comandos disponíveis:"
	@echo "  make setup        Instala Python via pyenv, cria venv local e instala libs"
	@echo "  make install      Instala dependências do requirements.txt"
	@echo "  make freeze       Atualiza requirements.txt com versões fixadas"
	@echo "  make clean        Remove o ambiente virtual local"

check-pyenv:
	@command -v pyenv >/dev/null 2>&1 || { \
		echo "Erro: pyenv não encontrado. Instale o pyenv antes de continuar."; \
		exit 1; \
	}

setup: check-pyenv
	@echo "Instalando Python $(PYTHON_VERSION) via pyenv, se necessário..."
	pyenv install -s $(PYTHON_VERSION)

	@echo "Definindo versão local do Python..."
	pyenv local $(PYTHON_VERSION)

	@echo "Criando ambiente virtual em $(VENV_DIR)..."
	$(PYTHON_BIN) -m venv $(VENV_DIR)

	@echo "Atualizando pip..."
	$(PIP) install --upgrade pip setuptools wheel

	@echo "Instalando dependências..."
	$(PIP) install -r requirements.txt

	@echo "Setup concluído. Para ativar o ambiente:"
	@echo "source $(VENV_DIR)/bin/activate"

venv:
	$(PYTHON_BIN) -m venv $(VENV_DIR)

install:
	$(PIP) install --upgrade pip setuptools wheel
	$(PIP) install -r requirements.txt

freeze:
	$(PIP) freeze > requirements.txt

clean:
	rm -rf $(VENV_DIR)
