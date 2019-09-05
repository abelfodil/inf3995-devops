FROM builder

RUN apk add --no-cache openjdk8

ENV ANDROID_HOME /opt/android-sdk
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools

RUN apk add --no-cache bash unzip

RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -O android-sdk-tools.zip \
    && unzip -q android-sdk-tools.zip -d ${ANDROID_HOME} \
    && rm -f android-sdk-tools.zip

RUN mkdir -p ~/.android/ && touch ~/.android/repositories.cfg
RUN yes | sdkmanager "--licenses"

RUN sdkmanager "platforms;android-24" "build-tools;29.0.0" "platform-tools"
