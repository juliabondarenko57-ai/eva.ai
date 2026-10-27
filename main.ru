from fastapi import FastAPI
from fastapi.responses import HTMLResponse

app = FastAPI(title='Eva AI Video Studio')

@app.get('/', response_class=HTMLResponse)
def home():
    return '''
    <!doctype html>
    <html lang="ru">
    <head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"></head>
    <body style="font-family:Arial,sans-serif;max-width:700px;margin:60px auto;padding:20px">
      <h1>Eva AI Video Studio</h1>
      <p>Приложение запущено. Подключение LTX API — следующий этап.</p>
    </body></html>
    '''

@app.get('/health')
def health():
    return {'status': 'ok'}
