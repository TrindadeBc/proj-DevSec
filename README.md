#  Projeto DevSecOps 2025 - Servidor Web com Monitoramento

Este projeto simula a criação de um servidor web Linux com monitoramento e alertas via Telegram.

## ✅ Funcionalidades

- Instalação do servidor NGINX
- Página HTML personalizada
- Script Bash para monitoramento da disponibilidade do site
- Envio de alerta para Telegram se o site estiver fora do ar
- Log das execuções em /var/log/monitoramento.log

## 🔒 Segurança

- Uso de .env para armazenar tokens sensíveis
- .env está protegido via .gitignore

## 📁 Estrutura do Projeto

/projetoDevSec/
├── monitor.sh          # Script principal
├── .env                # Variáveis de ambiente (ignorado pelo Git)
├── .gitignore          # Ignora o .env
├── README.md           # Documentação do projeto
