FROM python:3.11
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt && export GROQ_API_KEY=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
EXPOSE 8000
CMD ["uvicorn", "app.mini_groq:app", "--host", "0.0.0.0", "--port", "8000"]
