FROM python:3.9-alpine AS builder

WORKDIR /app

RUN apk add --no-cache --virtual .build-deps \
    gcc musl-dev libffi-dev openssl-dev libgcc

COPY app/requirements.txt requirements.txt
RUN pip install --no-cache-dir --user -r requirements.txt
COPY app/ .

FROM python:3.9-alpine

WORKDIR /app

RUN apk add --no-cache libffi libgcc

COPY --from=builder /root/.local /root/.local
COPY --from=builder /app /app

ENV PATH=/root/.local/bin:$PATH
CMD ["python", "app.py"]

