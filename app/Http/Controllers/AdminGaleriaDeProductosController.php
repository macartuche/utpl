<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminGaleriaDeProductosController extends CBController {


    public function cbInit()
    {
        $this->setTable("tblgallery");
        $this->setPermalink("galeria_de_productos");
        $this->setPageTitle("Galeria de productos");

        $this->addSelectTable("Producto","products_id",["table"=>"products","value_option"=>"id","display_option"=>"p_name","sql_condition"=>""]);
		$this->addImage("Imagen","image")->encrypt(true);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
