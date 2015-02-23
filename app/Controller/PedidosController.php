# /app/Controller/PedidosController.php

class PedidosController extends AppController {
    public $helpers = array ('Html','Form');
    public $name = 'Pedidos';
    
    function index() {
        $this->set('pedidos', $this->Pedido->find('all'));
    }
}