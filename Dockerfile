# Sử dụng image Node.js chính thức mới nhất từ Docker Hub
FROM node:latest

# Đặt thư mục làm việc trong container thành /app
WORKDIR /app

# Sao chép tệp package.json và package-lock.json (nếu có) vào thư mục làm việc của container
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép tất cả các file còn lại vào thư mục làm việc của container
COPY . .

# Mở cổng 5000 (hoặc cổng mà ứng dụng của bạn sử dụng)
EXPOSE 10000

# Chạy ứng dụng Node.js
CMD ["node", "app.js"]
