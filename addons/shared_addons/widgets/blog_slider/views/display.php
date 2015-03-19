<?php 
	echo Asset::render_js('bslider');
	echo Asset::render_css('bslider'); 
?>


<div class="flexslider row-fluid visible-desktop col-md-4">
	<ul class="slides">
		<?php foreach($blog_slides as $slide): ?>
		<li data-thumb="<?php echo site_url("files/thumb/{$slide->image}/1000");?>">

			<div class="flex-caption span4">
				
				<span class="category">
					<a href="<?php echo site_url("blog/category/{$slide->category_slug}")?>" rel="category tag"><?php echo $slide->category_title;?></a>
				</span>
				
				<h2>
					<a href="<?php echo 'blog/'.date('Y/m', $slide->created_on) .'/'.$slide->slug ?>"><?php echo $slide->title?></a>
				</h2>
				
				<div class="excerpt">
					<p><?php echo substr(strip_tags($slide->intro), 0,150);?>...</p>
				</div>

				<div class="more">
					<a class="btn btn-danger" href="<?php echo 'blog/'.date('Y/m', $slide->created_on) .'/'.$slide->slug ?>">read more</a>
				</div>
				
			</div>
			<div class="span8">
				<a href="<?php echo 'blog/'.date('Y/m', $slide->created_on) .'/'.$slide->slug ?>">
					<img src="<?php echo site_url("files/thumb/{$slide->image}/1000");?>" alt="<?php echo $slide->title?>">
				</a>
			</div>
		</li>
		<?php endforeach ?>
	</ul>
</div>

<script type="text/javascript">
/**
	 * add flex slider call if plugin included
	 */
	if ($.fn.flexslider) {
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation: "slide",
				slideshowSpeed: 7000,
				animationSpeed: 600,
				pauseOnHover: 1,
				smoothHeight: true,
				directionNav: false,

			    controlNav: "thumbnails"
			});
		});
	}
</script>
