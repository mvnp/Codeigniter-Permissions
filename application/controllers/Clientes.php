<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Clientes extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		echo "entrarnaloja";
	}

	public function escolher()
	{
		echo "escolher";
	}	

	public function comprar()
	{
		echo "comprar";
	}

	public function pagarparcelas()
	{
		echo "pagarparcelas";
	}

	public function fazerparcelamento()
	{
		echo "fazerparcelamento";
	}

	public function fiado()
	{
		echo "fiado";
	}

	public function devolver()
	{
		echo "devolver";
	}

	public function trocar()
	{
		echo "trocar";
	}

	private function privado()
	{
		echo "trocar";
	}

	protected function protegido()
	{
		echo "trocar";
	}
}

/* End of file Clientes.php */
/* Location: ./application/controllers/Clientes.php */