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
