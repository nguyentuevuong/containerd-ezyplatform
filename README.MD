# Môi trường ảo hoá cho nền tảng ezyplatform

## Yêu cầu

 - Đọc qua tài liệu của đội ngũ phát triển [tại đây](https://youngmonkeys.org/ezyplatform/guides/install-ezyplatform?lang=vi)
 - Phải có docker hoặc podman (chạy lệnh tương ứng)

## Cài đặt
1. Tải repo này về máy client, yêu cầu phải có docker/podman hoặc containerd
2. Sửa các cài đặt trong file `Dockerfile` (dòng 3-5) và `docker-compose.yaml` (dòng 12-15) cho phù hợp với nhu cầu
3. Chạy lệnh: `docker compose pull` để tải các images cần thiết.
3. Chạy lệnh: `docker compose build --no-cache` để build image `youngmonkey/ezyplatform:0.0.4`
4. Chạy lệnh: `docker compose up` cho lần cài đặt đầu tiên, sau khi cài đặt xong, nhấn `Ctrl + C` để thoát
5. Đảo comment dòng 28 và 29 trong file `docker-compose.yaml` rồi chạy lại lệnh compose ở bước 4 với tham số `-d`
6. Thưởng thức thành quả thôi.

## Các chú ý.
 - Có thể dừng ở bước số 4 với lệnh `compose up` cùng tham số `-d`
 - Đội ngũ phát triển chưa hỗ trợ biến môi trường nên file .env không hoạt động ở thời điểm hiện tại.
 - Cần tham khảo với đội ngũ phát triển các thư mục chứa contents, logs,.... để ánh xạ volumes tương ứng.
 - Nếu muốn sử dụng các phiên bản khác của ezyplatform, thay phiên bản tương ứng cho giá trị `0.0.4` trong file `Dockerfile` và `docker-compose.yaml`