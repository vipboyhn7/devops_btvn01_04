#!/bin/bash

# Tạo thư mục làm việc của dự án user-service
sudo mkdir -p /opt/quickbite/user-service

# Đổi chủ sở hữu thư mục /opt/quickbite (và toàn bộ thư mục con) sang user/group quickbite
sudo chown -R quickbite:quickbite /opt/quickbite

# Đặt quyền hạn truy cập cho thư mục /opt/quickbite là 750
sudo chmod 750 /opt/quickbite

# Giải thích ý nghĩa mã số phân quyền 750 (rwxr-x---):
# - 7 (rwx = 4+2+1) - Owner (user quickbite): Toàn quyền đọc, ghi/sửa/xóa và truy cập thư mục.
# - 5 (r-x = 4+0+1) - Group (group quickbite): Chỉ có quyền đọc danh sách tệp và truy cập thư mục, không được chỉnh sửa.
# - 0 (--- = 0+0+0) - Others (người dùng khác): Không có quyền truy cập, ngăn chặn rò rỉ file cấu hình nhạy cảm.

