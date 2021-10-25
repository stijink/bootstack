---
to: <%= name %>/build/php-conf/realpath_cache.ini
---
; Optimizations for Symfony, as documented on http://symfony.com/doc/current/performance.html
opcache.max_accelerated_files = 20000
realpath_cache_size = 4096K
realpath_cache_ttl = 600