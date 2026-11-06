FROM ghcr.io/mistralai/workflows-python:latest
WORKDIR /app
COPY apps/ ./apps/
COPY apps.json .
COPY pyproject.toml .
RUN pip install -e .
CMD ["python", "-m", "worker.entrypoints.worker"]
