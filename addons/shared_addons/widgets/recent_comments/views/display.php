<ul>
	<?php foreach($comments as $comment): ?>
		
		<li class="clearfix">
			<div>
				<div class="thumb">
				
	            			<?php echo gravatar($comment->user_email, 50); ?>
					
				</div>
		            	<div class="des">
		            		<span class="date"><strong>
	            				<?php echo $comment->user_name;?>
	            			</strong></span>
		            		<p><a href="<?php echo site_url($comment->uri)?>"><?php echo substr($comment->comment, 0,70) ?></a></p>
		            	</div>
	            	</div>
                </li>
	<?php endforeach ?>

</ul>
