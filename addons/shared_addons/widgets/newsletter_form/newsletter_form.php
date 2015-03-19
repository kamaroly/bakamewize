<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Display recent Flickr photo
 * 
 * @author		Youhan
 * @email		pyrocms.ir@gmail.com
  */
class Widget_Newsletter_form extends Widgets
{

	/**
	 * The translations for the widget title
	 *
	 * @var array
	 */
	public $title = array(
		'en' => 'Newsletter Form',	
	);

	/**
	 * The translations for the widget description
	 *
	 * @var array
	 */
	public $description = array(
		'en' => 'Display Newsletter Form',
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

	public $fields = array(
		array(
			'field' => 'url',
			'label' => 'Url',
			'rules' => 'trim|required'
		),
		array(
			'field' => 'text',
			'label' => 'Extra text',
			'rules' => 'trim'
		)
	);
	
	public function run($options)
	{
		
		return array(
			'url' => $options['url'],
			'text' => $options['text']
		);
        }
	

}