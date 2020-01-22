# list all categories
wp_list_categories()

#
get_the_category_by_ID()

//var_dump(get_categories());

var_dump(get_category_by_slug('anb'));

# thumbnail
the_post_thumbnail()


$url = wp_get_attachment_url( get_post_thumbnail_id($dataPost->ID) );


wp get nav menu items

# resetear data
wp_reset_postdata()

## agregar en function para saber numero de post
## function.php
function wpse8170_get_posts_count() {
    global $wp_query;
    return $wp_query->post_count;
}
# funcion para cortar string
function limit_string($cadena, $limite, $corte=" ", $pad="...")
{
    if(strlen($cadena) <= $limite)
        return $cadena;
    if(false !== ($breakpoint = strpos($cadena, $corte, $limite))) {
        if($breakpoint < strlen($cadena) - 1) {
            $cadena = substr($cadena, 0, $breakpoint) . $pad;
        }
    }

    return $cadena;
}
# funcion para cortar palabra string
function limit_words( $str, $num='', $append_str='' ) {
    $num = ($num == '') ? strlen($str) : $num;
    $palabras = preg_split( '/[\s]+/', $str, -1, PREG_SPLIT_OFFSET_CAPTURE );
    if( isset($palabras[$num][1]) ){
      $str = substr( $str, 0, $palabras[$num][1] ) . $append_str;
    }
    unset( $palabras, $num );
    return trim( $str );
}
## get link WPL traduccion
$icl_object_id = icl_object_id(get_the_ID()); VAR_DUMP($icl_object_id)

## translatle title widget
public function widget( $args, $instance ) {
    extract($args);
    $title = apply_filters( 'widget_title', empty($instance['title']) ? '' : $instance['title'], $instance );
    $text = apply_filters( 'widget_text', $instance['text'], $instance );

### fitrar texto para url o *limpiar* decode
sanitize_title('string')

### configuracion de variable enviroment en Apache y php
Apache config
```apache
<VirtualHost *:80>
    #ServerName
    #DocumentRoot

        SetEnv APPLICATION_ENV "development"

    # Directory
</VirtualHost>
```

PHP config
```php
$env = getenv('APP_ENV') ?: 'production';
```



### lectura wordpress
Links de referencia utiles

* [Cargar archivos js & css](http://scribu.net/wordpress/optimal-script-loading.html)
*

### wordpress cli
# exportar db
wp db export --allow-root --path=/var/www/html/Fashionblog/app
# instalar plugin
wp plugin install jetpack --allow-root --path=/var/www/html/Fashionblog/app


### Avanzado configurar: wp-config.php

Mostrar errores log

@ini_set( 'log_errors','On' );
@ini_set( 'display_errors','Off' );
@ini_set( 'error_log','/public_html/wordpress/php_error.log' );

###
define( 'LANGDIR', '/wp-content/bury/my/languages' );

###
define( 'FTP_USER', 'username' );
define( 'FTP_PASS', 'password' );
define( 'FTP_HOST', 'ftp.example.com:21' );

###
Configurar en VirtualHost

php_flag display_startup_errors off
php_flag display_errors off
php_flag html_errors off
php_flag log_errors on
php_value error_log /public_html/php-errors.log

###
variables globales WPL

### VARIBABLE
global $is_lynx, $is_gecko, $is_IE, $is_opera, $is_NS4,
$is_safari, $is_chrome, $is_iphone;


wp_is_mobile()

global $is_apache, $is_IIS;
### Data Validation and Sanitization
esc_html( $text );
<input type="text" name="first_name" value="<?php echo esc_attr( $text ); ?>">
<textarea name="description"><?php echo esc_textarea( $text ); ?></textarea>
<a href="<?php echo esc_url( $url ); ?>">
<script>
var bwar='<?php echo esc_js( $text ); ?>';
</script>
<?php sanitize_text_field( $text ); ?>
 sanitize_email( '    éric@loremipsum.com!' )

## activar debug en wp-config
define('WP_DEBUG', true);
define('WP_DEBUG_DISPLAY', true);
define('WP_DEBUG_LOG', true);


### script
Pagina siguiente y anterior PHP

	$next_post_link_url = get_permalink( get_adjacent_post(false,'',false)->ID );
	$prev_post_link_url = get_permalink( get_adjacent_post(false,'',true)->ID );

### agregar variable a URL

	$currentURL = add_query_arg( 'i', $key + 1, get_permalink() );
