<?php
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

function sendRequest($path, $options = array()){
  if($options['body']){
    $c = curl_init();
    curl_setopt($c, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($c, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($c, CURLOPT_URL, $options['base'] . $path);
    curl_setopt($c, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    curl_setopt($c, CURLOPT_POST, true);
    curl_setopt($c, CURLOPT_POSTFIELDS, json_encode($options['body']));

    $result = curl_exec($c);

    /* Check for 404 (file not found). */
    $httpCode = curl_getinfo($c, CURLINFO_HTTP_CODE);
    // Check the HTTP Status code
    switch ($httpCode) {
        case 200:
            $error_status = "200: Success";
            return ($result);
            break;
        case 404:
            $error_status = "404: API Not found";
            break;
        case 500:
            $error_status = "500: servers replied with an error.";
            break;
        case 502:
            $error_status = "502: servers may be down or being upgraded. Hopefully they'll be OK soon!";
            break;
        case 503:
            $error_status = "503: service unavailable. Hopefully they'll be OK soon!";
            break;
        default:
            $error_status = "Undocumented error: " . $httpCode . " : " . curl_error($c);
            break;
    }
    curl_close($c);
    echo $error_status;
    die;
  } else if($options['token']){
    if (isset($options["api"]) && $options["api"] === "liga") {
      // $orderBy: campeonato, turno, mes, rodada, patrimonio
      $orderBy = "";
      if (isset($options["orderBy"]) && $options["orderBy"] != "") {
        $orderBy = "?orderBy=". $options["orderBy"];
      }
      // $page: 1, 2, 3...
      $page = "";
      if (isset($options["page"]) && $options["page"] != "") {
        if (!array_key_exists("orderBy", $options)) {
          $page = "?page=". $options["page"];
        } else {
          $page = "&page=". $options["page"];
        }
      }
      $url = "https://api.cartolafc.globo.com/auth/liga/". $options["liga_slug"] . $orderBy . $page;
    }
    else if (isset($options["api"]) && $options["api"] === "atleta-pontuacao") {
      $url = "https://api.cartolafc.globo.com/auth/mercado/atleta/". $options["atleta_id"] ."/pontuacao";
    }
    else {
      $url = $options['base'] . $path;
    }

    $json = exec("curl -X GET ". $url ." -H 'x-glb-token: ". $options['token'] ."'");
    return ($json);
  } else {
    $json = exec("curl -X GET " . $options['base'] . $path);
    return ($json);
  }
}

function login($login, $password){
  $body = array('payload' => array(
    'email' => $login,
    'password' => $password,
    'serviceId' => 4728
  ));

  return json_encode(sendRequest('authentication', array(
    'base' => 'https://login.globo.com/api/',
    'body' => $body
  )));
}

function api($path, $options = array()){
  $opts = array(
    'token' => isset($token) && !empty($token) ? $token : false,
    'body' => false,
    'base' => 'https://api.cartolafc.globo.com/'
  );

  if(count($options) > 0) {
    array_merge($opts, $options);
  }

  $results = sendRequest($path, $opts);

  if(trim($results) == '404 page not found') {
    header('HTTP/1.0 404 Not Found');
  }

  echo json_encode($results);
}
?>