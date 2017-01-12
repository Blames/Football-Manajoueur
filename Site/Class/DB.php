<?php
class DB{
	public static $instance;

	private function __construct()
	{
		$this->bdd = new PDO('mysql:host=localhost;dbname=football_manager;charset=utf8','root','');
	}

	public static function getInstance()
	{
		if (empty(self::$instance)) {
			self::$instance = new DB();
		}
		return self::$instance;
	}

}

?>