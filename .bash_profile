export PATH="/usr/local/sbin:$PATH"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias ll='ls -al'
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php56.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias memcache.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias memcache.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist"
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.error.log'
alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.access.log'
#alias 'nginx service stop'='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.ngix.plist'
PHP_AUTOCONF="/usr/local/bin/autoconf"

# Include Drush bash customizations.
if [ -f "/Users/bclincy/.drush/drush.bashrc" ] ; then
   source /Users/bclincy/.drush/drush.bashrc
fi

# Include Drush completion.
if [ -f "/Users/bclincy/.drush/drush.complete.sh" ] ; then
  source /Users/bclincy/.drush/drush.complete.sh
fi

# Include Drush prompt customizations.
if [ -f "/Users/bclincy/.drush/drush.prompt.sh" ] ; then
  source /Users/bclincy/.drush/drush.prompt.sh
fi
# Git branch in prompt.
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\e[36m$(parse_git_branch)\[\033[m\]\$ "
#\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
shopt -s checkwinsize

