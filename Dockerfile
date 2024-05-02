# Base image 설정
FROM nginx:latest

# # 기존의 nginx.conf 파일 제거
# RUN rm /etc/nginx/conf.d/default.conf

# 커스텀 nginx 설정 파일을 이미지 내에 복사
COPY nginx.conf /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-available/default

# Expose port 80 (HTTP) 와 443 (HTTPS, 필요한 경우)
EXPOSE 80
EXPOSE 443

# Nginx를 실행
CMD ["nginx", "-g", "daemon off;"]
