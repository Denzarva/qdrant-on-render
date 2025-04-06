FROM qdrant/qdrant:latest

# Указываем явно порт
EXPOSE 6333

# Запускаем Qdrant вручную
CMD ["./qdrant"]
