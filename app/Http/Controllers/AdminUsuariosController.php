<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminUsuariosController extends CBController {


    public function cbInit()
    {
        $this->setTable("users");
        $this->setPermalink("usuarios");
        $this->setPageTitle("Usuarios");

        $this->addText("Nombres","name")->strLimit(150)->maxLength(255);
		$this->addEmail("Correo","email");
		$this->addDatetime("Email Verified At","email_verified_at");
		$this->addText("Password","password")->strLimit(150)->maxLength(255);
		$this->addText("Admin","admin")->strLimit(150)->maxLength(255);
		$this->addText("Remember Token","remember_token")->strLimit(150)->maxLength(255);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addText("Address","address")->strLimit(150)->maxLength(255);
		$this->addText("City","city")->strLimit(150)->maxLength(255);
		$this->addText("State","state")->strLimit(150)->maxLength(255);
		$this->addText("Country","country")->strLimit(150)->maxLength(255);
		$this->addText("Pincode","pincode")->strLimit(150)->maxLength(255);
		$this->addText("Mobile","mobile")->strLimit(150)->maxLength(255);
		$this->addImage("Photo","photo")->encrypt(true);
		$this->addSelectTable("Cb Role","cb_roles_id",["table"=>"cb_roles","value_option"=>"id","display_option"=>"name","sql_condition"=>""]);
		$this->addText("Ip Address","ip_address")->strLimit(150)->maxLength(255);
		$this->addText("User Agent","user_agent")->strLimit(150)->maxLength(255);
		$this->addDatetime("Login At","login_at");
		

    }
}
