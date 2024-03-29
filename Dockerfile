FROM ubuntu:18.10

RUN sed -i 's/archive.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN sed -i 's/security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-lang-cyrillic \
	dvipng \
	texlive-latex-recommended \
	texlive-base \
	texlive-pictures \
	cm-super \
	texlive-generic-extra \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

COPY cv/* ./
COPY runlx.sh ./

CMD [ "bash", "./runlx.sh" ]
