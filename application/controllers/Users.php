<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MY_Controller
{

    private $registerErrors = array();
    private $user_id;
    private $num_rows = 5;

    public function __construct()
    {
        parent::__construct();
        $this->load->library('email');
    }

    public function index()
    {
        show_404();
    }

    public function login()
    {
        parent::loginCheck();
        if (isset($_POST['login'])) {
            $result = $this->Public_model->checkPublicUserIsValid($_POST);
            if ($result !== false) {
                $_SESSION['logged_user'] = $result; //id of user
                //TODO redirect to my account page
                redirect(LANG_URL . '/myaccount');
            } else {
                $this->session->set_flashdata('userError', lang('wrong_user'));
            }
        }
        $head = array();
        $data = array();
        $head['title'] = lang('user_login');
        $head['description'] = lang('user_login');
        $head['keywords'] = str_replace(" ", ",", $head['title']);
        $this->render('login', $head, $data);
    }

    public function register()
    {
        parent::loginCheck();
        if (isset($_POST['signup'])) {
            $result = $this->registerValidate();
            if ($result == false) {
                $this->session->set_flashdata('userError', $this->registerErrors);
                redirect(LANG_URL . '/register');
            } else {
                $_SESSION['logged_user'] = $this->user_id; //id of user
                //TODO redirect to my account page
                redirect(LANG_URL . '/myaccount');
            }
        }
        $head = array();
        $data = array();
        $head['special'] = "res";
        $head['title'] = lang('user_register');
        $head['description'] = lang('user_register');
        $head['keywords'] = str_replace(" ", ",", $head['title']);
//        $this->load->view('templates/redlabel/_customparts/header.php', $head);
//        $this->load->view('templates/redlabel/signup.php', $data);
//        $this->load->view('templates/redlabel/_parts/footer.php');

        $this->render('signup', $head, $data);
    }

    public function userbackup($page = 0)
    {
        if (!isset($_SESSION['logged_user'])) {
            redirect(LANG_URL . '/login');
        }
        if (isset($_POST['update'])) {
            $_POST['id'] = $_SESSION['logged_user'];
            $count_emails = $this->Public_model->countPublicUsersWithEmail($_POST['email'], $_POST['id']);
            if ($count_emails == 0) {
                $this->Public_model->updateProfile($_POST);
            }
            redirect(LANG_URL . '/myaccount');
        }
        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = str_replace(" ", ",", $head['title']);
        $data['userInfo'] = $this->Public_model->getUserProfileInfo($_SESSION['logged_user']);
        $rowscount = $this->Public_model->getUserOrdersHistoryCount($_SESSION['logged_user']);
        $data['orders_history'] = $this->Public_model->getUserOrdersHistory($_SESSION['logged_user'], $this->num_rows, $page);
        $data['links_pagination'] = pagination('myaccount', $rowscount, $this->num_rows, 2);
        $this->render('user', $head, $data);
    }

    public function myaccount($page = 0) {
        if (!isset($_SESSION['logged_user'])) {
            redirect(LANG_URL . '/login');
        }

        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = str_replace(" ", ",", $head['title']);

        $orderNumber = intval($this->Public_model->getUserOrdersHistoryCount($_SESSION['logged_user']));
        $data['orders_history'] = $this->Public_model->getUserOrdersHistory($_SESSION['logged_user'], $orderNumber, $page);
//        $data['links_pagination'] = pagination('myaccount', $rowscount, $this->num_rows, 2);

        $this->render('my_account', $head, $data);
    }

    public function orderDetail($orderNo){
        if (!isset($_SESSION['logged_user'])) {
            redirect(LANG_URL . '/login');
        }

        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = str_replace(" ", ",", $head['title']);

        $results = $this->Public_model->getUserOrdersHistoryByOrderNumber($_SESSION['logged_user'], $orderNo);
        $data['products'] = unserialize($results[0]['products']);
        $productName = [];
        foreach ($data['products'] as $item){
            $res = $this->Public_model->getOneProduct($item['product_info']['id']);
            array_push($productName, $res['title']);
        }
        $data['productName'] = $productName;
        $this->render('order_detail', $head, $data);
    }

    public function changeEmailPass(){
        if (!isset($_SESSION['logged_user'])) {
            redirect(LANG_URL . '/login');
        }

        if (isset($_POST['change_email'])) {
            $validationError = array();
            $result = $this->Public_model->checkPublicUserIsValidByIdPass($_SESSION['logged_user'], $_POST['pass']);
            if ($result == false) {
                $validationError[] =  "You have entered wrong password";
                $this->session->set_flashdata('submit_error', $validationError);
            } else {
                $this->Public_model->updateUserEmail($_SESSION['logged_user'], $_POST['new_email']);
                $this->session->set_flashdata('submit_success', 'Your email has been updated');
            }
        }

        if (isset($_POST['change_pass'])) {
            $validationError = array();
            $result = $this->Public_model->checkPublicUserIsValidByIdPass($_SESSION['logged_user'], $_POST['old_pass']);
            if ($result == false) {
                $validationError[] =  "You have entered wrong password";
                $this->session->set_flashdata('submit_error', $validationError);
            } else {
                if($_POST['new_pass'] === $_POST['con_pass']) {
                    $this->Public_model->updateUserPassword($_SESSION['logged_user'], $_POST['new_pass']);
                    $this->session->set_flashdata('submit_success', 'Your password has been updated');
                } else {
                    $validationError[] =  "Tow password doesn't match";
                    $this->session->set_flashdata('submit_error', $validationError);
                }
            }
        }

        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = str_replace(" ", ",", $head['title']);

        $results = $this->Public_model->getUserOrdersHistoryByOrderNumber($_SESSION['logged_user'], 1241);
        $data['products'] = unserialize($results[0]['products']);
        $productName = [];
        foreach ($data['products'] as $item){
            $res = $this->Public_model->getOneProduct($item['product_info']['id']);
            array_push($productName, $res['title']);
        }
        $data['productName'] = $productName;
        $this->render('changepass', $head, $data);

    }

    public function address() {
        if (!isset($_SESSION['logged_user'])) {
            redirect(LANG_URL . '/login');
        }

        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = str_replace(" ", ",", $head['title']);

        $data['userInfo'] = $this->Public_model->getUserProfileInfoAddress($_SESSION['logged_user']);

        $this->render('address_book', $head, $data);
    }

    public function newAddress() {
        if (!isset($_SESSION['logged_user'])) {
            redirect(LANG_URL . '/login');
        }

        if (isset($_POST['save_address'])) {

            $this->Public_model->updateProfileWithoutPassword($_SESSION['logged_user'], $_POST['name'], $_POST['phone']);

            $isAddress = $this->Public_model->getUserAddressCount($_SESSION['logged_user']);

            if($isAddress != 0) {
                $this->Public_model->updateUserAddress($_SESSION['logged_user'], $_POST['city'], $_POST['post_code'], $_POST['address']);
                $this->session->set_flashdata('submit_success', "Information Updated");
            } else {
                $this->Public_model->insertUserAddress($_SESSION['logged_user'], $_POST['city'], $_POST['post_code'], $_POST['address']);
                $this->session->set_flashdata('submit_success', "Information Added");
            }
        }

        $head = array();
        $data = array();
        $head['title'] = lang('my_acc');
        $head['description'] = lang('my_acc');
        $head['keywords'] = str_replace(" ", ",", $head['title']);

        $data['userInfo'] = $this->Public_model->getUserProfileInfoAddress($_SESSION['logged_user']);

        $this->render('new_address', $head, $data);
    }

    public function logout()
    {
        unset($_SESSION['logged_user']);
        redirect(LANG_URL);
    }

    private function registerValidate()
    {
        $errors = array();
        if (mb_strlen(trim($_POST['name'])) == 0) {
            $errors[] = lang('please_enter_name');
        }
        if (mb_strlen(trim($_POST['phone'])) == 0) {
            $errors[] = lang('please_enter_phone');
        }
        if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
            $errors[] = lang('invalid_email');
        }
        if (mb_strlen(trim($_POST['pass'])) == 0) {
            $errors[] = lang('enter_password');
        }
        if (mb_strlen(trim($_POST['pass_repeat'])) == 0) {
            $errors[] = lang('repeat_password');
        }
        if ($_POST['pass'] != $_POST['pass_repeat']) {
            $errors[] = lang('passwords_dont_match');
        }

        $count_emails = $this->Public_model->countPublicUsersWithEmail($_POST['email']);
        if ($count_emails > 0) {
            $errors[] = lang('user_email_is_taken');
        }
        if (!empty($errors)) {
            $this->registerErrors = $errors;
            return false;
        }
        $this->user_id = $this->Public_model->registerUser($_POST);
        return true;
    }

}
