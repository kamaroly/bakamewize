<ul>
	<?php foreach($blog_widget as $post_widget): ?>
		
		<li class="clearfix">
			<div>
				<div class="thumb">
					<?php if (isset($post_widget->image)):?>
		            			<a href="<?php echo 'blog/'.date('Y/m', $post_widget->created_on) .'/'.$post_widget->slug ?>">
		            				<img src="<?php echo site_url("files/thumb/{$post_widget->image}/200/140/fill") ?>" alt="" class="thumbnail">
		            			</a>
					<?php endif;?>
				</div>
		            	<div class="des">
		            		<p><?php echo anchor('blog/'.date('Y/m', $post_widget->created_on) .'/'.$post_widget->slug, $post_widget->title,'class="post-title"') ?></p>
		            		<span class="date"><?php echo format_date($post_widget->created_on)?></span>
		            	</div>
	            	</div>
                </li>
	<?php endforeach ?>

</ul>