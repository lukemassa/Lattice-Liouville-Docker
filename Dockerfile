FROM centos:7

RUN yum install git boost-devel boost-devel -y
# RUN yum install fftw fftw-devel -y

# Maybe I don't understand c++ build processes (strike that I definitely don't), but it looks like it expects all these files in one dir...

RUN git clone https://github.com/tgbudd/Lattice-Liouville.git /tmp/liouville
RUN git clone https://github.com/dealias/fftwpp.git /tmp/fftwpp

RUN mkdir /src
WORKDIR /src

RUN cp -r /tmp/fftwpp/* /src/.
RUN cp -r /tmp/liouville/* /src/.
RUN clang -lm -ldl -std=c++11 -lstdc++  shortest_cycle.cpp liouville.cpp fftw++.cc -lfftw3 -o /CYCLE
