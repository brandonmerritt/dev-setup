On-Boarding Frequently Asked Questions
======================================

1. How can I set the proxy config for NPM
  * ```npm config set proxy desired proxy```
  * ```npm config set https-proxy desired proxy```
2. I'm getting a NodeJS error that says _eaddrinuse_. What's that about?
  * It's possible that NodeJS crashed and the instance wasn't stopped. Try ```pkill node```
3. How do I define the proxy inline?
  * ```npm --proxy http://some.proxy:0000 \ install -g node-sass```
4. I'm getting a console error saying the LiveReload Port is already in use.
  * Close your tabs and restart your browser
5. HA. HA. You suggested I use VIM to edit a file and now I have no idea how to edit/exit/quit.
  * [http://vim.rtorr.com/](http://vim.rtorr.com/)
6. I'm constantly having to SUDO my NPM installs.
  * [http://flipstewart.com/2014/11/08/sudo-npm-stfu/](http://flipstewart.com/2014/11/08/sudo-npm-stfu/)