<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminPaísesController extends CBController {


    public function cbInit()
    {
        $this->setTable("countries");
        $this->setPermalink("paises");
        $this->setPageTitle("Países");

        $this->addText("Código de país","country_code")->strLimit(150)->maxLength(255);
		$this->addText("Nombre","country_name")->strLimit(150)->maxLength(255);
		$this->addDatetime("Fecha creación","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
