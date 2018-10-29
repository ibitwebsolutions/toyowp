<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_toyotires');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'zFpN%8}SXe]Gk,/nO_rV^PCweKucQ0#`z7TEVTz3TP:RdE}P#U.etLCR]_Iu:7a ');
define('SECURE_AUTH_KEY',  '+E:$-QCA2/_g3,Qkq`ZH[BwGe7;LCyVD$K&6bxcPwqQXn+<qW*a$4SpR?oHMg?HF');
define('LOGGED_IN_KEY',    ' `Q=Jg#*=]b`:9z6]}z+fZ{lM2>~vMlR->Q^#>|h#DgzKHYX5RBD/v@KUSyo:sO-');
define('NONCE_KEY',        'VfKc`h+{`l5TmDH?luY=_H(3/{mq]yiIN%#uud@6#,/F1)Sn)NJ~HlELJNvBK=kB');
define('AUTH_SALT',        '+6<^H56^4y@${.~{h1=uY90QLr1aqDGC-YwqAgK1NQ4+z!zk?qw8-o(avv &}1H:');
define('SECURE_AUTH_SALT', '-NIy=DDUWzH>BX~BRBb71tg-X)d|$XbUpa,1QLX9D@9@[/p.+PrhLmLgAaFS>c]N');
define('LOGGED_IN_SALT',   '5$tQ#B:qt*@Y.zuz 7:C1FJ?~=S]8pu;?Uwr-WW;%/rZ@:D}%ymcf@85TA1i9EHv');
define('NONCE_SALT',       '(t%gB^.M|1Fr6mHF3Yl5Z?x|5|BY$w;J[Xm(hYwKawEB_89^aB:^[0r(a9rV#4S{');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
