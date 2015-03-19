<?php defined('BASEPATH') or exit('No direct script access allowed');
/**
 * Blog Plugin
 *
 * Create lists of posts
 * 
 * @author   Yohan
 * @author   Alireza Jahandideh
 * @package  PyroCMS/plugins
 */
class Plugin_Blog_cat extends Plugin
{
	public $version = '1.0.0';
	public $name = array(
		'en' => 'Blog Categories'
	);
	public $description = array(
		'en' => 'A plugin to display blog categories and posts.'
	);

	/**
	 * List
	 *
	 * Creates a list of blog posts grouped by categories.
	 * This is a copy of core blog plugin with extra grouping
	 *
	 * Usage:
	 * {{ blog_cat:cats limit="5" }}
	 *		<h2>{{ title }}</h2>
	 * {{ /blog_cat:cats }}
	 *
	 * @param	array
	 * @return	array
	 */
	public function cats()
	{
		

		//get categories
		$limit     = $this->attribute('limit', null);
		$order_by  = $this->attribute('order-by', 'title');
		$order_dir = $this->attribute('order-dir', 'ASC');

		$categories = $this->db
			->select('id,title,slug')
			->order_by($order_by, $order_dir)
			->limit($limit)
			->get('blog_categories')
			->result();

		



		$this->load->driver('Streams');

		// Get all of our default entry items:
		$params = $this->streams->entries->entries_params;

		// Override them with some settings
		// that should be these values:
		$overrides = array(
			'stream'		=> 'blog',
			'namespace'		=> 'blogs',
			'where'			=> array("`status` = 'live'"),
			'order_by'		=> 'created_on', 
			'sort'			=> 'desc',
			'show_past'		=> 'no',
			'date_by'		=> 'created_on',
			'limit'			=> $this->attribute('limit', 6),//get 6 posts from each category
			'offset'		=> $this->attribute('offset')
		);
		foreach ($overrides as $k => $v)
		{
			$params[$k] = $v;
		}

		// Convert our two non-matching posts params to their
		// stream counterparts. This is for backwards compatability.

		// Order by
		if ($this->attribute('order-by')) {
			$params['order_by'] = $this->attribute('order-by');
		}
		elseif ($this->attribute('order_by')) {
			$params['order_by'] = $this->attribute('order_by');
		}

		// Sort
		if ($this->attribute('order-dir')) {
			$params['sort'] = $this->attribute('order-dir');
		}
		elseif ($this->attribute('order_by')) {
			$params['sort'] = $this->attribute('sort');
		}

		// See if we have any attributes to contribute.
		foreach ($params as $key => $default_value)
		{
			if ( ! in_array($key, array('where', 'stream', 'namespace')))
			{
				$params[$key] = $this->attribute($key, $default_value);
			}
		}

		

		
		// Get our posts.
		$posts=array(
			'entries'=>array()
		);
		foreach($categories as $category){

			// Extra join and selects for categories.
			$this->row_m->sql['select'][] = $this->db->protect_identifiers('blog_categories.title', true)." as 'category_title'";
			$this->row_m->sql['select'][] = $this->db->protect_identifiers('blog_categories.slug', true)." as 'category_slug'";
			$this->row_m->sql['select'][] = $this->db->protect_identifiers('blog_categories.title', true)." as 'category||title'";
			$this->row_m->sql['select'][] = $this->db->protect_identifiers('blog_categories.slug', true)." as 'category||slug'";
			$this->row_m->sql['join'][] = 'LEFT JOIN '.$this->db->protect_identifiers('blog_categories', true).' ON '.$this->db->protect_identifiers('blog_categories.id', true).' = '.$this->db->protect_identifiers('blog.category_id', true);

			$params['where']='`category_id`= \''.$category->id."'";
			$cat_posts = $this->streams->entries->get_entries($params);
			if (count($cat_posts)>0){
				foreach($cat_posts['entries'] as $push){
					array_push($posts['entries'],$push);	
				}
				
			}
			
		}
		
		

		if ($posts['entries'])
		{		
			// Process posts.
			// Each post needs some special treatment.
			foreach ($posts['entries'] as &$post)
			{
				$this->load->helper('text');

				// Keywords array
				$keywords = Keywords::get($post['keywords']);
				$formatted_keywords = array();
				$keywords_arr = array();

				foreach ($keywords as $key)
				{
					$formatted_keywords[] 	= array('keyword' => $key->name);
					$keywords_arr[] 		= $key->name;

				}
				$post['keywords'] = $formatted_keywords;
				$post['keywords_arr'] = $keywords_arr;

				// Full URL for convenience.
				$post['url'] = site_url('blog/'.date('Y/m', $post['created_on']).'/'.$post['slug']);
			
				// What is the preview? If there is a field called intro,
				// we will use that, otherwise we will cut down the blog post itself.
				$post['preview'] =  (isset($post['intro'])) ? $post['intro'] : $post['body'];
			}
		}
		//dump($posts);die();


		//lets re-group theme
		$cats=array();
		foreach ($posts['entries'] as $p)
		{
			$cats[$p['category_id']]['slug'] = $p['category_slug'];
			$cats[$p['category_id']]['title'] = $p['category_title'];
			if (count($cats[$p['category_id']]['posts'])==0){
				$p['first']=1;
			}else{
				$p['first']=0;
			}
			
			$cats[$p['category_id']]['posts'][] = $p;

			 
		}
		//dump($cats);
		return $cats;

	}

}