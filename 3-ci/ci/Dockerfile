FROM builder

ENV ANDROID_HOME /opt/android-sdk
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools
ENV SDK_TOOLS "4333796"
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-${SDK_TOOLS}.zip -O /tmp/android-sdk-tools.zip \
    && mkdir -p  ${ANDROID_HOME} \
    && unzip -q /tmp/android-sdk-tools.zip -d ${ANDROID_HOME}

ENV GLIBC_VERSION 2.30-r0
RUN wget https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -O /etc/apk/keys/sgerrand.rsa.pub \
    && wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk -O /tmp/glibc.apk \
    && wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-bin-${GLIBC_VERSION}.apk -O /tmp/glibc-bin.apk \
    && wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-i18n-${GLIBC_VERSION}.apk -O /tmp/glibc-i18n.apk \
    && apk add --no-cache /tmp/glibc.apk /tmp/glibc-bin.apk /tmp/glibc-i18n.apk

RUN apk add --no-cache openjdk8 unzip zlib-dev

RUN mkdir -p ~/.android/ && touch ~/.android/repositories.cfg
RUN yes | sdkmanager "--licenses"

RUN sdkmanager "platforms;android-28" "build-tools;28.0.3" "platform-tools" "extras;android;m2repository" "extras;google;m2repository" "extras;google;instantapps"
