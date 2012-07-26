<?php
class Dialogs extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        
        $this->load->config('messages');
        $this->load->library('messages_igniter');
        $this->load->model('responses_model');
	}
	
	
	function response_manager()
	{		
		if ($this->uri->segment(4))
		{
			$response = $this->responses_model->get_response($this->uri->segment(4));

			$this->data['response']			= $response->response;
			$this->data['access'] 			= $response->access;
			$this->data['access_value']		= $response->access_value;
			$this->data['status']			= $response->status;
		}
		else
		{
			$this->data['response']			= '';
			$this->data['access'] 			= 'E';
			$this->data['access_value']		= '';
			$this->data['status']			= 'P';
		}

		$this->data['modules'] = $this->social_igniter->scan_modules();

		$this->load->view('dialogs/response_manager', $this->data);
	}

	
}