FROM zouzias/boost:1.67.0

RUN apt-get -y update
RUN apt-get -y install make 

RUN apt-get -y update && apt-get -y install cmake libboost-all-dev
#RUN apt-get -y install cmake
RUN apt-get -y update && apt-get -y install cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev

RUN apt-get -y install libssl-dev zlib1g-dev
RUN apt-get -y install libmysqlclient-dev



RUN git clone https://github.com/qicosmos/feather.git && cd feather && git submodule update --init && mkdir build && cd build && cmake .. && make -j

