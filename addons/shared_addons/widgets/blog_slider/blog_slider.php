<?php defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Show Latest blog in your site with a widget using an slider.
 *
 * Intended for use on cms pages. Usage :
 * on a CMS page add:
 *
 *     {widget_area('name_of_area')}
 *
 * 'name_of_area' is the name of the widget area you created in the  admin
 * control panel
 *
 * @author  Alireza Jahandideh
 * @author  Yohan
 * @package widget
 */
class Widget_Blog_slider extends Widgets
{

	public $author = 'Alireza Jahandideh';

	public $website = 'http://www.pyrocms.ir';

	public $version = '1.0.0';

	public $title = array(
		'en' => 'Blog Slider'
	);

	public $description = array(
		'en' => 'Display blog posts via an slider to your pages'
	);

	// build form fields for the backend
	// MUST match the field name declared in the form.php file
	public $fields = array(
		array(
			'field' => 'limit',
			'label' => 'Number of posts',
		)
	);

	public function form($options)
	{
		$options['limit'] = ( ! empty($options['limit'])) ? $options['limit'] : 3;

		return array(
			'options' => $options
		);
	}

	public function run($options)
	{
		// load the blog module's model
		class_exists('Blog_m') OR $this->load->model('blog/blog_m');

		// sets default number of posts to be shown
		$options['limit'] = ( ! empty($options['limit'])) ? $options['limit'] : 3;

		// retrieve the records using the blog module's model
		$blog_slides = $this->blog_m
			->limit($options['limit'])
			->get_many_by(array('status' => 'live'));

		//add css and js
		$siteref= 'addons/'.SITE_REF.'widgets/blog_slider/assets/js/jquery.flexslider-min.js';
	        if(file_exists($siteref))
	        {
	                Asset::add_path('blogslider', 'addons/'.SITE_REF.'widgets/blog_slider/assets/');
	        }
	        else
	        {
	                Asset::add_path('blogslider', SHARED_ADDONPATH.'widgets/blog_slider/assets/');
	        }
	        Asset::css('blogslider::flexslider.css', false, 'bslider');
        	Asset::js('blogslider::jquery.flexslider-min.js', false, 'bslider');

		// returns the variables to be used within the widget's view
		return array('blog_slides' => $blog_slides);
	}

}

