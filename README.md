# Ruby Telegram Mini App

## Introduction

Game that simulates market volatility using a single fictious stock as an example

## Sertup environment

1. Create a `.env` file in the app root folder and define the following environment variables:
   ```
   REDIS_URL = 'redis://localhost:6379/0'
   TOKEN = 'YOUR_TELEGRAM_TOKEN'
   NGROK_URL = 'YOUR_NGROK_URL'
   ```

2. Run rails project:
   ```
   bundle exec rails s
   ```

3. Run telegram bot:
   ```
   ruby bot/bot.rb
   ```
