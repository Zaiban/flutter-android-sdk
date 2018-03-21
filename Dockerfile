FROM runmymind/docker-android-sdk:ubuntu-standalone

#RUN $ANDROID_HOME/tools/bin/sdkmanager --list
RUN $ANDROID_HOME/tools/bin/sdkmanager "build-tools;27.0.3" "platform-tools" "platforms;android-26"

# Install Flutter. 
RUN cd / && git clone -b dev https://github.com/flutter/flutter.git
ENV PATH=/flutter/bin:$PATH
RUN echo $ANDROID_HOME && flutter doctor -v
RUN apt-get -y install libstdc++6 fonts-droid-fallback 
RUN flutter doctor

