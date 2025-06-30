#  Projeto DevSecOps 2025 - Servidor Web com Monitoramento

Este projeto simula a criação de um servidor web Linux com monitoramento e alertas via Telegram.

##  Como executar localmente

1. Clone este repositório
2. Crie um arquivo `.env` com as seguintes variáveis:
   - `TELEGRAM_TOKEN`
   - `CHAT_ID`
3. Dê permissão de execução ao script:

   ```bash
   chmod +x monitor.sh
   ```

4. Execute manualmente para testar:

   ```bash
   ./monitor.sh
   ```

5. Verifique o log em:

   ```
   /var/log/monitoramento.log
   ```


## 📆 Agendamento automático

Este projeto utiliza `cron` para executar o script de monitoramento periodicamente.

📝 Veja os detalhes do agendamento em [`docs/cron.md`](docs/cron.md)

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
├── docs/             # Documentação adicional
│   └── cron.md       # Detalhes do agendamento via cron


##  Autor

Projeto desenvolvido por TrindadeBc – 2025
