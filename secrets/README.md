# Публикация docker-образов

Это простой пример получения секретов из Yandex Lockbox в пайплайне CI/CD Gitlab.

## Инициализация проекта

Создать переменные окружения:

1. Внутри проекта перейти: `Settings → CI/CD → Variables`
2. `YC_CI_SECRET_ID`: идентификатор секрета в Lockbox
3. `YC_CI_LOCKBOX_KEY`: содержимое созданного файла `.key.json` (см. local_file.key в main.tf) с флагом **MASKED**. Для этого:
  - убедиться, что `.key.json` заканчивается на `}`, не на пустую строку
  - выполнить команду: `cat .key.json | base64 -w 0`
  - полученный хеш указать как значение создаваемой переменной

## Документация

- [Yandex Lockbox](https://yandex.cloud/ru/docs/lockbox/)
