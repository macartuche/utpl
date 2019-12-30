<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminDireccionDeEntregaController extends CBController {


    public function cbInit()
    {
        $this->setTable("delivery_address");
        $this->setPermalink("direccion_de_entrega");
        $this->setPageTitle("Direccion de entrega");

        $this->addSelectTable("Usuario","users_id",["table"=>"users","value_option"=>"id","display_option"=>"name","sql_condition"=>""]);
		$this->addEmail("Correo","users_email");
		$this->addText("Nombre","name")->strLimit(150)->maxLength(255);
		$this->addText("Dirección","address")->strLimit(150)->maxLength(255);
		$this->addText("Ciudad","city")->strLimit(150)->maxLength(255);
		$this->addText("Estado","state")->strLimit(150)->maxLength(255);
		$this->addText("País","country")->strLimit(150)->maxLength(255);
		$this->addText("Código PIN","pincode")->strLimit(150)->maxLength(255);
		$this->addText("Celular","mobile")->strLimit(150)->maxLength(255);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
