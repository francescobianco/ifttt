<?php

// Cattura l'input dal webhook IFTTT
$input = file_get_contents('php://input');

// Tasforma il testo maiscolo
$output = strtoupper($input);

// Ripassa il controllo a IFTTT
$ch = curl_init();
curl_setopt($ch,CURLOPT_URL, "https://maker.ifttt.com/trigger/$event/with/key/$apikey");
curl_setopt($ch,CURLOPT_POST, 1);
curl_setopt($ch,CURLOPT_HTTPHEADER, ["Content-Type: application/json"]);
curl_setopt($ch,CURLOPT_POSTFIELDS, $output);
curl_setopt($ch,CURLOPT_SSL_VERIFYPEER, false);
curl_exec($ch);
curl_close($ch);
