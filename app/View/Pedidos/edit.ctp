<div class="pedidos form">
<?php echo $this->Form->create('Pedido'); ?>
	<fieldset>
		<legend><?php echo __('Edit Pedido'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('data');
		echo $this->Form->input('total');
		echo $this->Form->input('desconto');
		echo $this->Form->input('mesa_id');
		echo $this->Form->input('ocupacao');
		echo $this->Form->input('fechado');
		echo $this->Form->input('Produto');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Pedido.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Pedido.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Pedidos'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Mesas'), array('controller' => 'mesas', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Mesa'), array('controller' => 'mesas', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Produtos'), array('controller' => 'produtos', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Produto'), array('controller' => 'produtos', 'action' => 'add')); ?> </li>
	</ul>
</div>
