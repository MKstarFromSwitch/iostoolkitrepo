# iostoolkitrepo
My APT repo for iOS tools (like partialZipBrowser by tihmstar)

### How to install the repo
First, get the GPG key:
```shell
wget https://iostoolkitrepo.netlify.app/public.key -O ~/iostoolkitrepo_public.key
```

Then, copy it and delete it from your home directory (this is harmless unless the key is deleted from /usr/share/keyrings):
```shell
sudo gpg --dearmor -o /usr/share/keyrings/iostoolkitrepo.gpg ~/iostoolkitrepo_public.key
rm ~/iostoolkitrepo_public.key
```

And finally, add the repo and update APT:
```shell
echo "deb [signed-by=/usr/share/keyrings/iostoolkitrepo.gpg] https://iostoolkitrepo.netlify.app/ stable main" | sudo tee /etc/apt/sources.list.d/iostoolkitrepo.list
sudo apt update
```
