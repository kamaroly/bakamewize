<h2 class="page-title" id="page_title"><span><?php echo lang('user:reset_password_title');?></span></h2>

<?php if(!empty($error_string)):?>
<!-- Woops... -->
<div class="alert alert-error">
	<?php echo $error_string;?>
</div>
<?php endif;?>
<div class="row-fluid">
    <div class="span6 input-form">
        <?php if(!empty($success_string)): ?>
                <div class="alert alert-success">
                        <?php echo $success_string; ?>
                </div>
        <?php else: ?>

                <?php echo form_open('users/reset_pass', array('id'=>'reset-pass')); ?>

                <h4 class="reset-instructions"><?php echo lang('user:reset_instructions'); ?></h4>

                <ul>
                        <li>
                                <label for="email"><?php echo lang('global:email') ?></label>
                                <input type="text" name="email" maxlength="100" value="<?php echo set_value('email'); ?>" />
                        </li>
                        <li>
                                <label for="user_name"><?php echo lang('user:username') ?></label>
                                <input type="text" name="user_name" maxlength="40" value="<?php echo set_value('user_name'); ?>" />
                        </li>
                        <li>
                            
                            <button type="submit" value="<?php echo lang('user:reset_pass_btn') ?>" name="btnSubmit" class='btn btn-info'>{{helper:lang line="user:reset_pass_btn"}}</button> 
                        </li>
                </ul>
                <?php echo form_close(); ?>

        <?php endif; ?>
    </div>
</div>