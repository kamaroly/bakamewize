<ol>
	<li class="even">
		<label>Module</label>
		<?php echo form_dropdown('module', $module_options, $options['module']); ?>
	</li>
	<li class="even">
		<label>Numb of items</label>
		<?php echo form_input('num', $options['num']); ?>
	</li>
</ol>