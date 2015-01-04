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