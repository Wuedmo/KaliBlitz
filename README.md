# Kali XFCE Docker Launcher

Minimal setup to run a **Kali Linux XFCE desktop in Docker using x11docker** on **Arch Linux / CachyOS**.

---

## Dependencies

Install required packages:

```bash
sudo pacman -S docker xorg-xhost xorg-server-xephyr git
```

Install **x11docker**:

```bash
git clone https://github.com/mviereck/x11docker.git
cd x11docker
sudo ./x11docker --install
```

---

## Enable Docker

```bash
sudo systemctl enable --now docker
```

(Optional: allow docker without sudo)

```bash
sudo usermod -aG docker $USER
```

Log out and back in.

---

## Allow GUI access

```bash
xhost +local:
```

---

## Build Kali Image

```bash
docker build --network=host -t kali-xfce-local .
```

---

## Start Kali

```bash
./start.sh
```
