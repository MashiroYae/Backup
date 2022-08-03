#!/usr/bin/env bash


if [ -f "/Users/mashiro/Library/Caches/mashiro/x86_64/emacs-mashiro-$(date "+%Y%m%d")-1-x86_64.pkg.tar.zst" ]
  then
    repo-add /Users/mashiro/Library/Caches/mashiro/x86_64/mashiro.db.tar.gz /Users/mashiro/Library/Caches/mashiro/x86_64/*.zst

    #rsync -azP --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.111:/srv/http
    rsync -azP -e 'ssh -p 2322' --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.200:/share/Web
    #rsync -azP --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.215:/srv/http
  else
    echo "Nya"
fi

if [ -f "/Users/mashiro/Library/Caches/mashiro/aarch64/emacs-nox-mashiro-$(date "+%Y%m%d")-1-aarch64.pkg.tar.zst" ]
  then
    repo-add /Users/mashiro/Library/Caches/mashiro/aarch64/mashiro.db.tar.gz /Users/mashiro/Library/Caches/mashiro/aarch64/*.zst

    #rsync -azP --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.111:/srv/http
    rsync -azP -e 'ssh -p 2322' --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.200:/share/Web
    #rsync -azP --delete /Users/mashiro/Library/Caches/mashiro mashiro@15.155.2.215:/srv/http
  else
    echo "Nya"
fi
