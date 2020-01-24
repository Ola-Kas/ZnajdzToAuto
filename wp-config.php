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
define( 'DB_NAME', 'wp-projekt' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'C54OQg1m%1?ZPTCeVv!T5GjOlAbzg)n:dPMA5t{5Bot1dp ZI vRmBds|1).RX#$' );
define( 'SECURE_AUTH_KEY',  '7u[<!F#O`G28#-u] qJ7NR&K_ql;(8=w|63,C5_M{6(?O9~fb]iMd6e79&DY~-<O' );
define( 'LOGGED_IN_KEY',    'X5b)/o:C@T96DfTJTH)>rkh:`.2r5pq9De~E7x7[HW_!&lUQi?cvAe?]t]>tTs8>' );
define( 'NONCE_KEY',        '.H!oXaqN@ WisBeE,q]+,K)!N:-r*^t2=%Q*_iI`Dq9r+pG0S]h.bFeCrD4j>/S`' );
define( 'AUTH_SALT',        'me+hU{PrqonJF)LOV5y7.V2by0Hm5n]gy8.vaCr&`Xt>sz40F17ac/BEin~((NXl' );
define( 'SECURE_AUTH_SALT', 'Y~XVG:z)/UETc{B8&*Q|_mUruf$Ks7B@q/;MTwLFlQ0YIoPQaqmAo:t4L_->`[3E' );
define( 'LOGGED_IN_SALT',   'R#[#+5>Po_vfT;v>#SH~b{$cON~&I#dXm/d> 0nM1MQ*n>PZ757*f1hC}yLP6sqf' );
define( 'NONCE_SALT',       'T?Ll^SS_*z/2=OEI)nc*!9e{<yFRUW}Ckxy3HH1s&7r={*N6p:6{2)7VW/=3NQo.' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
