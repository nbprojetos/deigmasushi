<?php
App::uses('Pedido', 'Model');

/**
 * Pedido Test Case
 *
 */
class PedidoTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.pedido',
		'app.mesa',
		'app.produto',
		'app.grupo',
		'app.pedidos_produto'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Pedido = ClassRegistry::init('Pedido');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Pedido);

		parent::tearDown();
	}

}
