<section id="respond">

    <div class="add-comment">

        <div class="add-comment-title">
            <h3><?php echo lang('comments:your_comment'); ?></h3>
        </div>

        <div class="comment-form">
            <?php echo form_open("comments/create/{$module}", 'id="create-comment"') ?>
                <noscript><?php echo form_input('d0ntf1llth1s1n', '', 'style="display:none"') ?></noscript>
                <?php echo form_hidden('entry', $entry_hash) ?>
                

               <?php if ( ! is_logged_in()): ?>
                <ul class="row-fluid">
                    <li class="span4">
                        <input type="text" class="span12 required" value="<?php echo $comment['name'] ?>" name="name" id="author" placeholder="<?php echo lang('comments:name_label'); ?>*">
                    </li>
                    <li class="span4">
                         <input type="email" class="span12 required" value="<?php echo $comment['email'] ?>" name="email" id="email" placeholder="Email Address*">
                    </li>
                    <li class="span4">
                         <input type="text" class="span12" value="<?php echo $comment['website'] ?>" name="website" id="url" placeholder="<?php echo lang('comments:website_label'); ?>">
                    </li>
                </ul>
                   
                <?php endif; ?>


                <p>
                    <textarea class="required span12" name="comment" rows="5" cols="30" id="comment" placeholder="<?php echo lang('comments:message_label'); ?>*"></textarea>
                </p>

                <p class="form-submit">
                    <input type="submit" class="btn btn-danger" value="<?php echo lang('comments:send_label');?>" id="submit" name="submit">
                </p>

            <?php echo form_close(); ?>
        </div>
            
    </div>
        
</section>

