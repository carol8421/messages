<?php
class Home extends Dashboard_Controller 
{
    function __construct() 
    {
        parent::__construct();

		$this->load->library('messages_igniter');

		$this->data['page_title']	= 'Messages';
    }
 
 	function index()
 	{ 	

		if ($this->uri->segment(2) == 'sent')
		{
			$messages 	= $this->messages_igniter->get_sent_or_drafts($this->session->userdata('user_id'), 'S');
			$sub_title	= 'Sent';	
		}
		elseif ($this->uri->segment(2) == 'drafts')
		{
			$messages 	= $this->messages_igniter->get_sent_or_drafts($this->session->userdata('user_id'), 'D');	
			$sub_title	= 'Drafts';
		}
		else
		{
			$messages 	= $this->messages_igniter->get_inbox($this->session->userdata('user_id'));	
			$sub_title	= 'Inbox';
		}
 		
 		$this->data['sub_title']	= $sub_title;
 		$this->data['messages'] 	= $messages;	
		$this->render();

	}
	
	function count_new()
	{		
		if (IS_AJAX)	echo $this->messages_igniter->get_inbox_new_count($this->session->userdata('user_id'));	
		else			header('HTTP/1.1 401 Unauthorized');	
	}	

}