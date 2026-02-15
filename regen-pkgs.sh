#!/usr/bin/env bash

echo "Regenerating Packages..."
dpkg-scanpackages pool/main /dev/null > dists/stable/main/binary-amd64/Packages
gzip -c dists/stable/main/binary-amd64/Packages > dists/stable/main/binary-amd64/Packages.gz

echo "Regenerating Release and InRelease..."
cd dists/stable
apt-ftparchive -c=../../apt-ftparchive.conf release . > Release
gpg --default-key 482BD50915FE1AC8 --clearsign -o InRelease Release

echo "Pushing to GitHub..."
cd ../../
git add *
git commit -m "Added palera1n"
git push origin main

echo "done"
exit 0
