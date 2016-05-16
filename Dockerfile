FROM debian:latest

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/tangledhelix/dotfiles.git .dotfiles

RUN cd .dotfiles && git checkout fix-install.pl
RUN cd .dotfiles && yes "a" | ./install.pl all
RUN cd .dotfiles && yes "a" | ./install.pl update:vim
RUN cd .dotfiles && yes "a" | ./install.pl update:zsh
RUN cd .dotfiles && yes "a" | ./install.pl bash

