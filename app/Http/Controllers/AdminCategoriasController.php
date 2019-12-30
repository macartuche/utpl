<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminCategoriasController extends CBController {


    public function cbInit()
    {
        $this->setTable("categories");
        $this->setPermalink("categorias");
        $this->setPageTitle("Categorias");

        $this->addText("Nombre","name")->strLimit(150)->maxLength(255);
		$this->addWysiwyg("Descripción","description")->strLimit(150);
		$this->addText("Url","url")->strLimit(150)->maxLength(255);
		$this->addText("Status","status")->strLimit(150)->maxLength(255);
		$this->addText("Remember Token","remember_token")->strLimit(150)->maxLength(255);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
