FROM archlinux

RUN pacman -Syu --noconfirm

RUN pacman -Syu --noconfirm --needed git ansible rsync base base-devel
RUN pacman -Syu --noconfirm --needed cmake ninja clang
RUN pacman -Syu --noconfirm --needed jdk8-openjdk

#### Add your packages heres ####
RUN pacman -Syu --noconfirm --needed fmt grpc
RUN pacman -Syu --noconfirm --needed gmock
#################################

RUN useradd -m notroot
RUN echo "notroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/notroot
USER notroot
WORKDIR /home/notroot
RUN git clone https://aur.archlinux.org/yay.git yay && pushd yay && makepkg --noconfirm --syncdeps --rmdeps --install --clean

RUN yay -S --noconfirm --needed android-sdk android-platform-28
RUN yay -Yc --noconfirm && yay -Sc --noconfirm

USER root

ENV ANDROID_HOME /opt/android-sdk
RUN yes | $ANDROID_HOME/tools/bin/sdkmanager --licenses
