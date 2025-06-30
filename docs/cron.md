# Agendamento via Cron

Este projeto inclui agendamento automático via `cron` para execução periódica do script de monitoramento.

---

## Entrada do `crontab`

```
* * * * * /projetoDevSec/monitor.sh
```

---

## Observações

- **Frequência**: a cada 1 minuto  
- **Responsável**: root  
- **Função**: Executa o script `monitor.sh` que verifica a disponibilidade da URL  
- **Importante**: O script deve ter permissão de execução (`chmod +x monitor.sh`)
