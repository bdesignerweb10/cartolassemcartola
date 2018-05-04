<?php
ob_start();
if (!isset($_SESSION)) session_start(); 

// ########################################
// ######## VARIAVEIS DE AMBIENTE #########
// ########################################

setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
ini_set('session.gc_probability', 1);
ini_set('session.gc_divisor', 100);

//require_once("acts/errorhandling.php");

// ########################################
// ############ CONN DATABASE #############
// ########################################

// DEV
$conn = new mysqli("localhost", "root", "root", "bolaocopa");

// PRD
//$conn = new mysqli("cartolassemcar.mysql.dbaas.com.br", "cartolassemcar", "cart@12345", "cartolassemcar");

if ($conn->connect_errno) {
    die("00000 - Failed to connect to MySQL: [$conn->connect_errno] $conn->connect_error");
}

// ########################################
// ################# INFO: ################
// ########################################

// PADRAO DE MENSAGEM DE ERROS:
// 99999
// |
// --> Prefixo do nivel do sistema. 0 = conn | 1 = site | 2 = admin
// 99999
//  |
//  --> Numero que indica o script. Sequencial em cada nivel de sistema
// 99999
//   |
//   --> Tres seguintes numeros: Sequencial do lugar onde a mensagem foi apresentada. Vai facilitar na hora de buscar no codigo do porque do erro aconteceu

?>