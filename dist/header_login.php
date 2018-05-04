<?php 
ob_start();
if (!isset($_SESSION)) session_start(); 

if(isset($_SESSION)) {
	session_unset();
	session_destroy();
}
?> <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><meta name="description" content="Acompanhe seu time na liga Cartolas sem Cartola e seque bastante todos seus colegas"><meta name="keywords" content="cartola, fc, globo, cartolas, sem, cartola, futebol, brasileirão, serie, a"><meta name="author" content="Pedro Pilz, Bruno Gomes"><meta name="robots" content="index, follow"><meta name="googlebot" content="index, follow"><title>Login | Cartolas sem cartola</title><link rel="apple-touch-icon" sizes="180x180" href="img/apple-touch-icon.png"><link rel="icon" type="image/png" sizes="32x32" href="img/favicon-32x32.png"><link rel="icon" type="image/png" sizes="16x16" href="img/favicon-16x16.png"><link rel="manifest" href="img/site.webmanifest"><link rel="mask-icon" href="img/safari-pinned-tab.svg" color="#5bbad5"><link rel="shortcut icon" href="img/favicon.ico"><meta name="msapplication-TileColor" content="#da532c"><meta name="msapplication-config" content="img/browserconfig.xml"><meta name="theme-color" content="#ffffff"><link rel="stylesheet" href="css/style.css"><link rel="stylesheet" type="text/css" href="css/bootstrap-toggle.min.css"></head><body></body></html>