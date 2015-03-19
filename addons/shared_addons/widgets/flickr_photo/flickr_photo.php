<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Display recent Flickr photo
 * 
 * @author		Youhan
 * @email		pyrocms.ir@gmail.com
  */
class Widget_Flickr_photo extends Widgets
{

	/**
	 * The translations for the widget title
	 *
	 * @var array
	 */
	public $title = array(
		'en' => 'Flickr photo',	
	);

	/**
	 * The translations for the widget description
	 *
	 * @var array
	 */
	public $description = array(
		'en' => 'Display Recent Flickr photos on your website',
	);

	/**
	 * The author of the widget
	 *
	 * @var string
	 */
	public $author = 'Youhan';

	/**
	 * The author's website.
	 * 
	 * @var string 
	 */
	public $website = 'http:/pyrocms.ir/';

	/**
	 * The version of the widget
	 *
	 * @var string
	 */
	public $version = '1.0';

	/**
	 * The fields for customizing the options of the widget.
	 *
	 * @var array 
	 */
	public $fields = array(
		array(
			'field' => 'username',
			'label' => 'User',
			'rules' => 'required'
		),
		array(
			'field' => 'number',
			'label' => 'Number of items',
			'rules' => 'required'
		)
	);

	
	public function run($options)
	{
		
		return array(
			'username' => $options['username'],
			'number' => $options['number']
		);
        }
	

}