FROM mpixel/alpine.repo
MAINTAINER Max Pixel <foss.docker@m-pixel.com>

# Todo: Switch from string literals to env vars, and in the CMD, quit with error if the aren't set from the outside
RUN git config --global color.ui false
RUN git config --global user.email "test@test.net"
RUN git config --global user.name "Test McTesterson"

RUN mkdir ~/shashlik
ENV platform linux
RUN cd ~/shashlik && repo init -u https://github.com/shashlik/shashlik-manifest -p $platform

CMD cd ~/shashlik && repo sync
