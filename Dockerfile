# Menggunakan base image Python versi 3.9
FROM python:3.9-slim

# Menentukan informasi pembuat
LABEL authors="Team Cashify"

# Menentukan direktori kerja dalam container
WORKDIR /app

# Menyalin file requirements.txt ke dalam container
COPY requirements.txt ./

# Menginstal semua dependensi
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin seluruh source code dan file model ke dalam container
COPY main.py ./
COPY model214.h5 ./
COPY scaler214.pkl ./

# Menentukan variabel lingkungan untuk Cloud Run
ENV PORT=8080

# Membuka port untuk Cloud Run
EXPOSE 8080

# Menjalankan aplikasi
CMD ["python", "main.py"]
