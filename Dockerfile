FROM python:3.9-slim
LABEL authors="Muhammad A. Fadillah"

# Menggunakan base image Python versi 3.9

# Menentukan direktori kerja dalam container
WORKDIR /app

# Menyalin file requirements dan source code ke dalam container
COPY requirements.txt /app/requirements.txt
COPY . /app

# Menginstal semua dependensi dari requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Menjalankan aplikasi Flask
CMD ["python", "app.py"]
