# source 100% height and width
http://stanhub.com/how-to-make-div-element-100-height-of-browser-window-using-css-only/
# source slide indicator css
http://stackoverflow.com/questions/6671375/css-box-shadow-top-and-bottom-only
# use con guide-marco-bootstrap photoshop
guideguide.me
# create web boostrap
layoutit.com

# source :ver codigo online
http://codepen.io/

# boostrap
.row # note You sure this div (class)
.col-md-*
.hidden-xs-*
.hidden-md-*
# push and pull (ojo en row)
.col-sm-push-8 .col-sm-pull-4 # 2 divs
# saltar
<div class="clearfix visible-xs"></div>

# center image higth and width 
.jumbotron


# templates boostrap
http://demov3.joostrap.com/
http://blue.joostrap.com/ # good stlide (modified)
# sombra top and botton (cc3)
box-shadow: 0px 10px 5px #888, 0px -10px 5px #888;

# source boostrap
# footer in foot
http://getbootstrap.com/2.3.2/examples/sticky-footer.html

## no aplicar estilo a la ultima lista css3
li:last-child > a {
    border-bottom: none;
    border:1px solid red;
}

## intalar grunt front-end [instalar como root]
npm install -g recess # compilador boostrap
sudo npm install -g grunt-cli # instala grunt local
sudo npm install # instalar en tu proyecto  /sites/web(jala dependencias de *package.json*)
#-------------------------------------------------
## boostrap no responsive
#-------------------------------------------------
http://bigwilliam.com/turn-off-responsive-behavior-for-bootstrap-3/
### step one
.container {width 992px important!}
### step two : change (variables.less)
# // Extra small screen / phone
@screen-xs: 0;
@screen-sm: 0;
### step three : compile boostrap: command shell[grunt dist]

