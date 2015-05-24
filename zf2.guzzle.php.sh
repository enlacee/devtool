
## Guzzle POST
     public function testGuardarDatosAction()
    {
        $dataQ = array(
            'id_user' => '2',
            'content_question' => 'question number test 0002',
            ' id_especiality' => '2'
        );
        $data = json_encode($dataQ);


        $client = new Client();
        $client->setDefaultOption('headers/Content-type', 'application/json');
        $client->setDefaultOption('headers/Accept', 'application/json');
        
        $optionsFormat = array('body' => '{"id_user" : "2", "content_question" : "aaaa", "id_especiality" : "3"}');
        
        //$optionsFormat = array('body' => '{"views_article" : "122344"}');
        //echo $strJson; exit;
        $URL = 'http://asiste.app/v1/contents/questions';
        try {
            $response = $client->post($URL, $optionsFormat);
            $statusCode = $response->getStatusCode();
        } catch (ClientException $e) {
            $statusCode = $e->getResponse()->getStatusCode();
            // return code error
            return $statusCode;
        }
               
        
        echo "<pre>"; print_r($response); exit;
    }

##

    //rest
    $client = new Client();
    $client->setDefaultOption('headers/Content-type', 'application/json');
    $client->setDefaultOption('headers/Accept', 'application/json');

    $dataPostBody = array (
        'email' => $dataPost['email'],
        'password' => $dataPost['password'],
        'name_profile' => $dataPost['fisrtName'],
        'lastname_profile' => $dataPost['lastName'],
        'gender_profile' => $dataPost['gender'],
        'id_especiality' => isset($dataPost['especiality']) ? $dataPost['especiality'] : ''
    );
    $response = $client->post($url, [
        'headers' => ['Content-Type' => 'multipart/form-data'],
        'body' => $dataPostBody
    ]);



