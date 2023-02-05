FROM ubuntu:latest

WORKDIR /webx

COPY requirements.txt ./

RUN apt update && upgrade
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "bot.py"]