<?php
/**
 * PedidoFixture
 *
 */
class PedidoFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false, 'key' => 'primary'),
		'data' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'total' => array('type' => 'float', 'null' => true, 'default' => null, 'unsigned' => false),
		'desconto' => array('type' => 'float', 'null' => true, 'default' => null, 'unsigned' => false),
		'mesa_id' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false, 'key' => 'index'),
		'ocupacao' => array('type' => 'integer', 'null' => false, 'default' => null, 'unsigned' => false),
		'fechado' => array('type' => 'boolean', 'null' => true, 'default' => null),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
			'fk_pedido_idmesa' => array('column' => 'mesa_id', 'unique' => 0)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_general_ci', 'engine' => 'InnoDB')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'data' => '2015-02-23 16:16:39',
			'total' => 1,
			'desconto' => 1,
			'mesa_id' => 1,
			'ocupacao' => 1,
			'fechado' => 1
		),
	);

}
