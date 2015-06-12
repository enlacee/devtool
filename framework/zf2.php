<?php 
/**
*
validacion en DISPACHER contoller + ACL
zf2
09/10. Implementando evento validador.mp4

-- VIEW HELPER
09/ 11.creando viewhelper
09/ 12.usando viewhelper
*
*/

# crear un proyecto zf2
# 01 : descargar
zftool.phar
# 02 : crear proyecto
php zftool.phar create project keydoc
# 03 : install zf2 library



En
un proyecto, donde hay más de un desarrollador, es importante que la
arquitectura se mantenga “simple”, de lo contrario, cuando crezca, será más
costoso mantener el sistema.


Module/Album/src/Album/Model

Class Album = modelo
Class AlbumTable = tabla


--- 
$this->tableGateway->select(array('id' => $id));

------------------------------
:::::::: obtener data 'PLUGIN params($key)'
------------------------------
$this->params()->fromRoute('param', $default);
// o bien
$this->params('param', $default);

------------------------------
:::::::: obtener data controller and action
------------------------------
$controllerName =$this->params('controller');
$actionName = $this->params('action');

// para GET
$this->params()->fromQuery('param', $default);
// para POST
$this->params()->fromPost('param', $default);

$this->params()->fromPost('paramname');   // From POST
$this->params()->fromQuery('paramname');  // From GET
$this->params()->fromRoute('paramname');  // From RouteMatch
$this->params()->fromHeader('paramname'); // From header
$this->params()->fromFiles('paramname');  // From file being uploaded


------------------------------
:::::::: Plugins redirect y forward
------------------------------
redirect()  : crea nueva peticion se pierde objetos
forward() : sigue el la misma HTTP

return $this->redirect()->toRoute('login-success');
// O bien hacia un controlador y acción dentro de application:
return $this->redirect()->toRoute('application', array('controller' => 'usuario', 'action' => 'listar'));

return $this->redirect()->toUrl($this->getRequest()->getBaseUrl() . '/application/usuario/listar');

// adition URL
$this->getRequest()->getUri()->getHost();

// El primer parámetro es el nombre del controller a invocar
// corresponde al nombre de la clase o alias configurado en module.config.php,
// el segundo son los parámetros, ej nombre de la acción
return $this->forward()->dispatch('Application\Controller\Usuario', array('action'=> 'listar'));

------------------------------
:::::::: objeto Request y Response
------------------------------
// Usando métodos accesores getters
$request = $this->getRequest();
$response = $this->getResponse();
// Usando directamente atributos
$request = $this->request;
$response = $this->response;

//Para obtener un parámetro $_POST
$unParametroPost= $this->getRequest()->getPost("id");
//Para obtener todos los parámetros $_POST
$obtenemosTodosParametrosPost = $request->getPost()->toArray();
//Para obtener un parámetro $_GET
$unParametroGet= $this->getRequest()->getQuery("id", 'valor_defecto');
//Para obtener todos los parámetros $_GET
$obtenemosTodosParametrosGet = $request->getQuery()->toArray();
//Obtener el base Url:
$baseUrl = $this->getRequest()->getBaseUrl()
## validar si es post
$this->request->isPost();
-- uso
$request->isPost()
// agregar o configurar un tipo de respuesta final,
$this->getResponse()->setHeader('Content-Type', 'text/xml');
$this->getResponse()->getHeaders()->get('Content-Encoding');
$this->getResponse()->getBody();
$this->getResponse()->setStatusCode(500);
// obj ARRAY LPB POO
$this->listaUsuario = new ArrayObject();
$this->listaUsuario->append(new Usuario(1, "Andres", "Guzman"));
------------------------------
:::::::: View Helper  Cycle
------------------------------
// desabilita el layout
$view->setTerminal(true);

------------------------------
:::::::: Layout partial configurar
------------------------------
<body>
echo $this->partial('layout/header');

// en module.config.php
'view_manager' => array(
etc ...
'template_map' => array(
'layout/header' => __DIR__ . '/../view/layout/header.phtml',
'layout/footer' => __DIR__ . '/../view/layout/footer.phtml',
etc ...
# pasar variable al layout desde controlador
$this->layout()->setVariable('dataUser', $this->myUsuario()->getSession());

------------------------------
:::::::: SQL
------------------------------
echo $select->getSqlString();
die;

------------------------------
:::::::: FORM
------------------------------
$form->setData($request->getPost());
------------------------------
:::::::: llamar a un helper en la vista
------------------------------
$hash =  $this->hashids()->encode(12);
// or
$this->plugin("hashids")->encode(12);

## retornar url relativa
$this->basePath();

<a href="<?php echo $this->url('news'); ?>">News Index</a>


##### crear cookie
// create a cookie \Zend\Http\Header\SetCookie
$cookie = new SetCookie('cookieName', 'cookieValue', time() + 60 * 60 * 24 * 1);
// seter to header
$this->getResponse()->getHeaders()->addHeader($cookie);

## crear cookie 2
setcookie('pricemin', 140, time() + 7200);

## leer cookie
$this->getRequest()->getCookie()->cookieName


###################### helper o plugin ####################

### helper para controller
$urlify = $this->helper->get('urlify');
$urlify->filter('123/6*');

## ok 1
 $this->getServiceLocator()->get('viewhelpermanager')->get('helperName');
## service mailtransport in controller 
 $this->getServiceLocator()->get('mail.transport')
## ok 2
 $this->getController()->getServiceLocator()->get('viewhelpermanager');


### helper para vista
var_dump($this->plugin("urlify")->filter('pepe lucho noré'));


## SQL ADNVACED
    foreach ($arrayDistrict as $key => $value) {
        $select->where("facilities_extended.district = '{$value}'", 'OR');
    }            
    // NEGAR
    $select->where->notEqualTo('facilities_extended.id_user', $doctorLess);


## zftool en ZF2
## INSTALL
composer require zendframework/zftool:dev-master
## execute
vendor/bin/zf.php --version

## controller
vendor/bin/zf.php create controller Hello Booking

### limpiar session+
$session_user->getManager()->getStorage()->clear('user');
## up
$sessionName = $this->getController()->getServiceLocator()->get('Config')['sessionNameForWeb'];
$session = new Container($sessionName);
$session->offsetSet('user', null); 


#
## llamar a un plugin en module.php
#
    public function onBootstrap(EventInterface $evm)
    {
        $sm = $evm->getApplication()
                      ->getServiceManager();
        $plugin = $sm->get('ControllerPluginManager')->get('myUsuario');

// var_dump($plugin->getSession()); exit;;
//  var_dump(get_class_methods($plugin)); exit;


# config router
# module/Booking/config/module.config.php
### ===== init 
            'blog' => array(
                'type' => 'Literal',
                'options' => array(
                    'route' => '/blog',
                    'defaults' => array(
                        '__NAMESPACE__' => 'Booking\Controller',
                        'controller' => 'Blog',
                        'action' => 'index',
                    ),
                ),
                'may_terminate' => true,
                    'child_routes' => array(
                        'blog-category' => array(
                            'type' => 'Regex',
                            'options' => array(
                                'regex' => '/(?<category>[a-zA-Z0-9_.%20]*)',
                                'defaults' => array (
                                    'action' => 'post',
                                ),
                                'spec' => '/%category%',
                            ),
                        ),
                        
                        'blog-post' => array(
                            'type' => 'Regex',
                            'options' => array(
                                'regex' => '/(?<category>[a-zA-Z0-9_.%20]*)/(?<post>[a-zA-Z0-9_.%20]*)-(?<id>[0-9]+)',
                                'defaults' => array (
                                    'action' => 'post',
                                ),
                                'spec' => '/%category%/%post%-%id%',
                            ),
                        ),
                        
                ),

            ),
### ===== end

## helper html
$viewHelperManager = $this->getServiceLocator()->get('ViewHelperManager');
$escapeHtml = $viewHelperManager->get('escapeHtml'); // $escapeHtml can be called as function because of its __invoke method       
$escapedVal = $escapeHtml('string');

## documentation of servicemanage ZF2
# http://framework.zend.com/manual/current/en/modules/zend.service-manager.intro.html

$serviceManager->setService('my-foo', new stdClass());
$serviceManager->setService('my-settings', array('password' => 'super-secret'));

var_dump($serviceManager->get('my-foo')); // an instance of stdClass
var_dump($serviceManager->get('my-settings')); // array('password' => 'super-secret')

## Agregar controlador en zf2
# /module/Booking/config/module.config.php

'controllers' => array(
    'invokables' => array(
        'Booking\Controller\Blog' => 'Booking\Controller\BlogController',
        'Booking\Controller\Login' => 'Booking\Controller\LoginController',
        'Booking\Controller\Page' => 'Booking\Controller\PageController',
    ),
    'factories' => array(
        'Booking\Controller\Booking' => 'Booking\Controller\BookingControllerFactory'
    )
),


### recursos zf2
# varios servicios librerias ya contruidad : RABIT :MONGO
https://github.com/bernardphp/bernard
## aouth
https://github.com/silvester/ReverseOAuth2


## obtener URL EN LA vista : view manager en la vista
$this->getHelperPluginManager()->getServiceLocator()->get('request');
$this->getHelperPluginManager()->getServiceLocator()->get('request')->getUri()->getPath();

## obtener router and request en la vista
    $request = $this->getHelperPluginManager()->getServiceLocator()->get('request');
    $router = $this->getHelperPluginManager()->getServiceLocator()->get('router');
    $routeMatch = $router->match($request);
    
    echo "<pre>"; print_r($routeMatch->getParams());     
  
    $id = $routeMatch->getParams('param1');  
    $token = $routeMatch->getParams('param2');




