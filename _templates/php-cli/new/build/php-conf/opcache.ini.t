---
to: <%= name %>/build/php-conf/opcache.ini
---
[opcache]
opcache.preload_user=www-data
opcache.memory_consumption=1024
opcache.interned_strings_buffer=256
opcache.max_accelerated_files=30000
opcache.validate_timestamps=on

# https://github.com/symfony/symfony/issues/37152
opcache.enable_cli=0

# only when OPCache Preloading was enabled
opcache.preload=/var/www/config/preload.php

# only when JIT was enabled
opcache.jit_buffer_size=512mb
opcache.jit=1225
