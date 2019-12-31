<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminProductosController extends CBController {


    public function cbInit()
    {
        $this->setTable("products");
        $this->setPermalink("productos");
        $this->setPageTitle("Productos");

        $this->addSelectTable("Categoría","categories_id",["table"=>"categories","value_option"=>"id","display_option"=>"name","sql_condition"=>""]);
		$this->addText("nombre","p_name")->strLimit(150)->maxLength(255);
		$this->addText("Código","p_code")->strLimit(150)->maxLength(255);
		$this->addText("color","p_color")->strLimit(150)->maxLength(255);
		$this->addWysiwyg("Descripción","description")->strLimit(150);
		$this->addMoney("precio","price");
		$this->addFile("Image","image")->encrypt(true);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
    }
}
