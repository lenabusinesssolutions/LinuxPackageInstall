# Lena  AI - Linux İçin Kurulum Scripti
Bu kurulum scripti, Linux makinelerinde çeşitli paketlerin ve araçların otomatik olarak yüklenmesini sağlar. Bu proje, Lena Business AI tarafından geliştirilmiştir ve Linux makinelerin kurulumunu kolaylaştırmayı hedefler. Script yalnızca root kullanıcı tarafından çalıştırılmalıdır.


## Ön Koşullar

- apt paket yönetimine sahip bir Linux makinesi (Ubuntu, Debian vb.)
- Makineye root erişimi

## Nasıl Kullanılır

1. `setup.sh` scriptini makinenize indirin. 
2. Terminali açın ve `setup.sh`'in bulunduğu dizine gidin.
3. Scripti çalıştırılabilir yapın:
   ```bash
   chmod +x setup.sh
   ```
4. Scripti root olarak çalıştırın:
   ```bash
   sudo ./setup.sh
   ```

### Uzaktan veya Bulut Tabanlı Bir Linux Kullanıyorsanız

Scripti uzaktan bir makineye kopyalamak için aşağıdaki komutu çalıştırın:

```bash
scp -i "path/to/your.pem" "path/to/setup.sh" username@remote_address:/path/to/remote/directory
```

Uzaktaki makineye SSH ile bağlanmak için:

```bash
ssh -i "path/to/your.pem" username@remote_address
```


Sonra scripti çalıştırmak için aşağıdaki komutları çalıştırın:

```bash
chmod +x setup.sh
sudo ./setup.sh
```

## Script Ne Yapar?

- Scriptin root olarak çalışıp çalışmadığını kontrol eder
- Paket listelerini günceller
- Mevcut paketleri günceller
- Temel derleme araçlarını yükler (örn: derleyiciler, curl, wget, git, vim, vb.)
- Python3, pip ve Python'ın `venv` modülünü yükler
- Veri bilimi, makine öğrenimi ve derin öğrenme için çeşitli Python paketleri ve kütüphaneleri yükler
- Node.js yükler
- OpenJDK 11 (Java) yükler
- Docker yükler
- MySQL ve PostgreSQL istemcileri yükler
- `tree` ve `ncdu` gibi ek araçlar yükler

## Yüklenen Paketler ve Araçlar

### Temel

- build-essential
- curl
- wget
- git
- vim
- tmux
- htop
- unzip

### Python ve Veri Bilimi

- python3
- python3-pip
- python3-venv
- numpy
- pandas
- matplotlib
- scikit-learn

### Ek Python Paketleri (Machine Learning ve Deep Learning için)

- tensorflow
- keras
- pytorch
- scikit-image
- opencv-python
- jupyterlab
- seaborn
- plotly
- xgboost
- lightgbm
- nltk
- spacy
- gensim

### Diğer Araçlar

- Node.js
- OpenJDK 11
- Docker
- MySQL client
- PostgreSQL client
- tree
- ncdu
