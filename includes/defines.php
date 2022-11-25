<?php

    defined('_BOANN') or header("Location:{$_SERVER["REQUEST_SCHEME"]}://{$_SERVER["SERVER_NAME"]}");

    // Global definitions
    $parts = explode(DIRECTORY_SEPARATOR, BPATH_BASE);
    $protocol = isset($_SERVER["HTTPS"]) ? 'https' : 'http';
    $path   =   !empty(explode('/', parse_url($_SERVER["REQUEST_URI"])["path"])[1]) ? explode('/', parse_url($_SERVER["REQUEST_URI"])["path"])[1] : null;

    // Defines.
    define('DS',                  DIRECTORY_SEPARATOR);
    define('BOANN_ROOT',          implode(DS, $parts));
    define('BOANN_SITE',          BOANN_ROOT);
    define('USER_IP',             $_SERVER["REMOTE_ADDR"]);
    define('BOANN_LIBRARIES',     BOANN_ROOT . DS . 'libraries');
    define('BOANN_THEMES',        BPATH_BASE . DS . 'template');
    define('BOANN_CACHE',         BPATH_BASE . DS . 'cache');
    define('BPATH_CONFIGURATION', BPATH_BASE . DS);
    define('SITE',                "{$protocol}://{$_SERVER["SERVER_NAME"]}/{$path}");
    define('ASSETS',              SITE."/assets");
    define('THEMES',              SITE."/templates");
