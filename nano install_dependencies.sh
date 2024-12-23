#!/bin/bash

# Atualizando o sistema
sudo apt update && sudo apt upgrade -y

# Instalar dependências básicas
sudo apt install -y python3-pip python3-dev python3-venv libsm6 libxext6 libxrender-dev git

# Instalar o PyTorch com suporte a CUDA (GPU) ou CPU, dependendo do seu ambiente
# Para instalar com suporte a CUDA, use o comando abaixo (garanta que sua máquina tenha CUDA configurado)
# Caso contrário, use a versão sem CUDA
pip install torch torchvision torchaudio

# Instalar as bibliotecas necessárias para o bot do Telegram
pip install python-telegram-bot

# Instalar a biblioteca Diffusers para a geração de imagens
pip install diffusers[torch]

# Instalar a dependência para imagens (PIL/Pillow)
pip install pillow

# Instalar as dependências adicionais do sistema necessárias para executar o modelo
sudo apt install -y libgl1-mesa-glx

# Instalar o CUDA, se necessário (para GPUs Nvidia)
# sudo apt install -y nvidia-cuda-toolkit  # Para CUDA se você estiver usando uma GPU Nvidia

# Baixar o código Python diretamente do GitHub
echo "Baixando o projeto..."
curl -L -o project.ai https://raw.githubusercontent.com/DragonSCRIPTS/ai_anime/refs/heads/main/project.ai

# Tornar o arquivo executável (caso seja necessário)
chmod +x project.ai

# Executar o script Python
echo "Iniciando o projeto..."
python3 project.ai
