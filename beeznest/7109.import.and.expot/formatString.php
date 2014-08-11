<?php


    /**
     * ayuda a filtrar si existen imagenes q apuntan ah un usuario o a muchos
     * formatea String para que todo los recursos direccionen ah
     * document/shared_folder/imagen.jpg
     * @param string $introText cadena a filtrar
     */
    function _filterToolIntro($course_code, $string)
    {
        $pathBase = '/courses/' . $course_code . '/document/shared_folder/';
        $pos = strpos($string, $pathBase);

        if ($pos === false) {
            //
        } else {
            $arraySrc = _getSrcOfHtml($string, 'shared_folder');
            if (is_array($arraySrc) && count($arraySrc) > 0) {              
                foreach($arraySrc as $value) {
                   $FileName = substr(strrchr($value, "/"), 1);
                   $pathBaseReplace = $pathBase . $FileName;
                   $string = str_replace($value, $pathBaseReplace, $string);
                }
            }
        }
    }

/**
* Obtiene todos los recursos (src) del html
* y los filtra segun.
*
*/
    function _getSrcOfHtml($string, $filter = '')
    {
        $src = array();
        if (!empty($string)) {
	        $array = explode("src=", $string);
	        unset($array[0]);
	        $array = array_values($array);

	        for ($i = 0; $i < count($array); $i++) {
	        	$arreglo = explode('"', $array[$i]);
	        	if (isset($arreglo[0])) {
	        		$src[] = $arreglo[1];	
	        	}
	        }

	        // filter
            if (!empty($filter)) {
                $srcFilter = array();
                for ($i = 0; $i < count($src); $i++) {
                	$pos = strpos($src[$i], $filter);
                    if ($pos !== false) {
                        $srcFilter[] = $src[$i];
                    }
                }
                $src = $srcFilter;
            }
        }

        return $src;
    }



$code = "CURSO1";
$stringHtml = <<<EOT
<p>imagen de usuario banana : anibal1</p><p> <img src="/courses/CURSO1/document/shared_folder/sf_user_3/banana.jpg" width="100" height="80" alt="" /></p><p>imagen del profesor git</p><p><img src="/courses/CURSO1/document/shared_folder/sf_user_1/Git-Icon-1788C.png" width="150" height="150" alt="" /></p><p> <img src="/courses/CURSO1/document/strawberry.jpg" width="0" height="0" alt="" />fresa document</p><p><img src="/courses/CURSO1/document/strawberry.jpg" width="150" height="131" alt="" /></p><p><img src="/courses/CURSO1/document/strawberry.jpg" width="0" height="0" alt="" /></p>
EOT;

$stringHtml2 = <<<EOT
<p>imagen de usuario banana : anibal1</p><p> <img src="/courses/CURSO1/document/shared_folder/sf_user_3/banana.jpg" width="100" height="80" alt="" /></p><p>imagen del profesor git</p><p><img src="/courses/CURSO1/document/shared_folder/sf_user_1/Git-Icon-1788C.png" width="150" height="150" alt="" /></p><p> <img src="/courses/CURSO1/document/strawberry.jpg" width="0" height="0" alt="" />fresa document<object id="single" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="320" height="240" style="background-color: rgb(220, 220, 220); text-align: center;"></object></p><p><img src="/courses/CURSO1/document/strawberry.jpg" width="150" height="131" alt="" /><embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" src="/courses/CURSO1/document/shared_folder/sf_user_3/mivideo.flv" play="true" loop="true" menu="true"></embed></p><p><img src="/courses/CURSO1/document/strawberry.jpg" width="0" height="0" alt="" /></p>
EOT;

_filterToolIntro($code, $stringHtml);




/*
APUNTE

crear :
document/shared_folder

01:
obtener lista de documentes de : (SQL : c_document)
document/shared_folder

/shared_folder/sf_user_1
/shared_folder/sf_user_3
/shared_folder/sf_user_3/banana.jpg
/shared_folder/sf_user_1/Git-Icon-1788C.png


02:
leer


*/