<?php
	if(@$_GET["ID"] == 0) $page->GoLocation($page->CreatePageLink('Bildirim_Listesi'));
	$ticket = Adm_GetTicket(@$_GET["ID"]);
	if($ticket == false) $page->GoLocation($page->CreatePageLink('Bildirim_Listesi'));

	$ticket_priclass = array(
		1 => "low","medium","high"
	);

	if(isset($_POST["yardir"])) {
		if(@$_POST["durum"] == "on") $_POST["durum"] = 2; else $_POST["durum"] = 1;
		if(Adm_SendTicketMessage($_GET["ID"],@$_POST["message"],$_POST["durum"])) {
			echo "Gonderildi";
			$ticket = Adm_GetTicket($_GET["ID"]);
		} else {
			echo "Gonderilemedi";
		}
	}
?>