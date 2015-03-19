<section id="comments">

    <h3 ><span><?php echo lang('comments:title'); ?></span></h3>
         
    <?php if ($comments): ?>
        <ul>
        <?php foreach ($comments as $item): ?>
            <li class="comment">
                <div class="row-fluid">

                    <div class="avatar-image span1">
                        <div>
                            <?php echo gravatar($item->user_email, 60); ?>
                        </div>
                    </div>


                    <div class="comment-text span9">
                        <span class="comment-arrow"></span>
                        <div class="clearfix comment-meta">
                            <span class="comment-author">
                                <?php echo $item->website ? anchor($item->website, $item->user_name, 'rel="external nofollow"') : $item->user_name; ?>
                            </span>
                            
                            <span class="comment-date pull-right">
                                <?php echo format_date($item->created_on); ?>
                            </span>
                            
                        </div>
              
                        <div>
                            <?php if (Settings::get('comment_markdown') AND $item->parsed > ''): ?>
                                <?php echo $item->parsed; ?>
                            <?php else: ?>
                                <p><?php echo nl2br($item->comment); ?></p>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="span2">&nbsp;</div>
                </div>	
            </li>

        
        <?php endforeach; ?>
        </ul>

    <?php else: ?>
        <p><?php echo lang('comments:no_comments'); ?></p>
    <?php endif; ?>
</section>



