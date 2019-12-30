<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminCuponesController extends CBController {


    public function cbInit()
    {
        $this->setTable("coupons");
        $this->setPermalink("cupones");
        $this->setPageTitle("Cupones");

        $this->addText("Código de cupón","coupon_code")->strLimit(150)->maxLength(255);
		$this->addText("Cantidad","amount")->strLimit(150)->maxLength(255);
		$this->addText("Tipo","amount_type")->strLimit(150)->maxLength(255);
		$this->addDate("Fecha expiración","expiry_date");
		$this->addText("Estado","status")->strLimit(150)->maxLength(255);
		$this->addDatetime("Created At","created_at")->required(false)->showAdd(false)->showEdit(false);
		$this->addDatetime("Updated At","updated_at")->required(false)->showAdd(false)->showEdit(false);
		

    }
}
