# Zhee Mod Menu (Free Fire iOS)

[![Build Zhee Mod Menu (iOS)](https://github.com/zheedevVn/Tweak-FreeFire-ModZhee/actions/workflows/build.yml/badge.svg)](https://github.com/zheedevVn/Tweak-FreeFire-ModZhee/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-iOS%2014.0%2B-blue.svg)](https://apple.com)
[![Architecture](https://img.shields.io/badge/Architecture-arm64-orange.svg)](#)
[![Package](https://img.shields.io/badge/Package-com.zheedev.modmenu-green.svg)](#)

Bản Mod Menu dành cho **Free Fire iOS** (`com.dts.freefireth` & `com.dts.freefiremax`), được tối ưu hóa giao diện ImGui Metal Backend tốc độ cao, hỗ trợ Jailbreak (Rootless) và Non-Jailbreak (Inject dylib).

---

## 📌 Tính năng chính

- **ESP Visuals**:
  - 2D Box & Dynamic Outline
  - Tracing Line (Snapline)
  - Health Bar & Text hiển thị chính xác % máu
  - Khoảng cách (Distance Meter) & Tên người chơi (Player Name)
  - Khung xương 3D (Full Bone Skeleton Tracing)
  - Vòng tròn cảnh báo 3D Circle & Out of Screen indicator (OOF)
- **Aimbot Engine**:
  - Silent Aim & Vector Aimbot
  - Tùy chỉnh FOV (0° - 360°)
  - Lọc mục tiêu thông minh (Bỏ qua đồng đội, bỏ qua đối thủ đã gục)
  - Tùy chọn hitbox: Đầu (Head), Cổ (Neck), Thân (Body)
  - Visible Check & Raycast line trace
- **Hệ thống Giao diện**:
  - Giao diện ImGui Metal Native siêu mượt, không drop FPS
  - Tự động nạp Avatar tác giả trực tiếp từ tài nguyên nhị phân
  - Nút hỗ trợ Fix Login timeout linh hoạt

---

## 🛠️ Biên dịch (Build)

### 1. Tự động qua GitHub Actions (Khuyên dùng)
Dự án đã tích hợp sẵn GitHub Actions workflow:
- Mỗi khi `git push` lên nhánh `main`, hệ thống tự động khởi tạo máy ảo macOS và biên dịch cả hai định dạng:
  - `.deb` (Dành cho máy Jailbreak / Rootless)
  - `.dylib` (Dành cho máy chưa Jailbreak, ký qua Esign / Scarlet / TrollStore)
- Tải file tại tab **Actions** -> Chọn build mới nhất -> Tải về ở mục **Artifacts**.

### 2. Biên dịch thủ công với Theos
Yêu cầu máy tính macOS hoặc Linux đã cài đặt [Theos](https://theos.dev):

```bash
git clone https://github.com/zheedevVn/Tweak-FreeFire-ModZhee.git
cd Tweak-FreeFire-ModZhee
bash build.sh
```

Gói cài đặt `.deb` sẽ được xuất vào thư mục `packages/`.

---

## 📱 Cài đặt

### Dành cho máy đã Jailbreak (Rootless)
1. Cài đặt tệp `com.zheedev.modmenu_2.1_iphoneos-arm64.deb` thông qua **Sileo**, **Zebra** hoặc **Filza**.
2. Respring thiết bị và mở game Free Fire.
3. Chạm 3 ngón tay 2 lần hoặc 2 ngón tay 2 lần lên màn hình để mở menu.

### Dành cho máy chưa Jailbreak
1. Tải tệp `ZheeModMenu.dylib` từ GitHub Artifacts.
2. Dùng **Esign**, **Scarlet**, **Sideloadly** hoặc **TrollStore** để tiêm (inject) dylib vào file IPA Free Fire gốc.
3. Cài đặt IPA đã tiêm và trải nghiệm.

---

## 👨‍💻 Thông tin Tác giả

- **Tác giả**: Zhee Dev (Hồ Đức Minh)
- **GitHub**: [@zheedevVn](https://github.com/zheedevVn)
- **Email**: `minhbach251207@gmail.com`
- **Zalo**: `0944921186`
- **Phiên bản**: `2.1`

---

## ⚠️ Tuyên bố miễn trừ trách nhiệm
Dự án được xây dựng với mục đích nghiên cứu cấu trúc game engine Unity/Il2Cpp và cơ chế đồ họa Metal trên hệ điều hành iOS. Tác giả không chịu trách nhiệm về bất kỳ hành vi sử dụng sai mục đích nào.
