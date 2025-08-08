FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PATH="/opt/venv/bin:$PATH"

RUN groupadd -r appgroup && useradd --no-log-init -r -g appgroup appuser

RUN mkdir -p /opt/venv && chown appuser:appgroup /opt/venv

USER appuser

RUN python3 -m venv /opt/venv

COPY requirements.txt .

RUN python3 -m pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

WORKDIR /app
COPY --chown=appuser:appgroup ./src /app/src

CMD ["uvicorn", "src.api.main:app", "--host", "0.0.0.0", "--port", "8000"]