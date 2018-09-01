<?php

function dmp($input){
	echo "<pre>";
		echo print_r($input);
	echo "</pre>";
	exit();
}

function Dump($input){
	echo "<pre>";
		echo print_r($input);
	echo "</pre>";
	exit();
}

function erro(){
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);
}