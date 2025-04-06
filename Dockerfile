FROM qdrant/qdrant:latest

# Устанавливаем socat для перенаправления портов
RUN apt update && apt install -y socat

# Пробрасываем порт 80 → 6333
CMD socat TCP-LISTEN:80,fork TCP:localhost:6333 & ./qdrant

EXPOSE 80
