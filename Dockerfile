FROM httpd:2.4.58

ARG CONF_FILE=/usr/local/apache2/conf/extra/git.conf
RUN apt update && \
    apt install -y git && \
    echo 'Include conf/extra/git.conf' >> /usr/local/apache2/conf/httpd.conf && \
    echo '<IfModule !mpm_prefork_module>' > $CONF_FILE && \
    echo '  LoadModule cgid_module modules/mod_cgid.so' >> $CONF_FILE && \
    echo '</IfModule>' >> $CONF_FILE && \
    echo '<IfModule mpm_prefork_module>' >> $CONF_FILE && \
    echo '  LoadModule cgi_module modules/mod_cgi.so' >> $CONF_FILE && \
    echo '</IfModule>' >> $CONF_FILE && \
    echo 'SetEnv GIT_PROJECT_ROOT /opt/git-server' >> $CONF_FILE && \
    echo 'SetEnv GIT_HTTP_EXPORT_ALL' >> $CONF_FILE && \
    echo 'SetEnv REMOTE_USER=$REDIRECT_REMOTE_USER' >> $CONF_FILE && \
    echo 'ScriptAlias /git/ "/usr/lib/git-core/git-http-backend/"' >> $CONF_FILE && \
    echo '<Location "/git">' >> $CONF_FILE && \
    echo '  Options +ExecCGI' >> $CONF_FILE && \
    echo '  Require all granted' >> $CONF_FILE && \
    echo '</Location>' >> $CONF_FILE
