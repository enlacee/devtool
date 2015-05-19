##
## Configurar router in controller : funciona externa
## 1 : function 
public function routerPages($keywordRouter)
{
    $forward = false;
    if ($keywordRouter == 'pregunta-a-nuestros-expertos') {
        $forward =  $this->forward()->dispatch('Booking\Controller\Blog', array('action'=> 'pregunta-a-nuestros-expertos'));
        
    }
    
    return $forward;
}
## 2 : script a poner dentro del action del controller
#	 : configurar router (regex) 'regex' => '/(?<category>[a-zA-Z0-9_-]*)',

$forward = $this->routerPages($routerCategory);
if ($forward != false) {
    return $forward;
}


##
##