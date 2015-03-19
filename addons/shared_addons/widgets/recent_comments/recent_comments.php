<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 *
 * Show recent Comments on your website 
 * 
 * Intended for use on cms pages. Usage : 
 * on a CMS page add:
 * 
 * 		{{ widgets:area slug="NAME_OF_AREA" }} 
 * 
 * 'name_of_area' is the name of the widget area you created in the  admin 
 * control panel
 * 
 * @author		Codedme Team
 * @author      Alireza Jahandideh
 * @package		Pyrocms/shared_addons/widgets
 */
class Widget_Recent_Comments extends Widgets {

    public $title = array(
            'en' => 'Recent Comments',
    );
    public $description = array(
            'en' => 'Show recent Comments on your website ',
    );
    public $author = 'Codedme Team';
    public $website = 'https://twitter.com/CodedmeTeam';
    public $version = '1.0';
    public $fields = array(
        array('field' => 'v', 'lable' => 'Module'),
        array('field' => 'num', 'lable' => 'Number of Items')
    );
    public function form($options) {
        
        !empty($options['module']) OR $options['module'] = 'all';
        !empty($options['num']) OR $options['num'] = 5;

        //prepare module options
        $all['all'] = "-- All --";
        $modules = $this->db
            ->select('module')
            ->group_by('module')
            ->order_by('module','ACE')
            ->get('comments')
            ->result();

        $list=array();
        if(!empty($modules))
        {
            foreach($modules as $m)
            {
                $list[$m->module] = $m->module;
            }
        }

        $module_options = $all + $list;

        return array(
                'options' => $options,
                'module_options' => $module_options
            );

    }

    public function run($options) {
    
        //Get comments
        $this->db->where('is_active',1); //we want active comments
        
        //Which module?
        if ($options['module']!='all'){
            $this->db->where('module',$options['module']);
        }
        $comments = $this->db
            ->order_by('created_on',"DESC")
            ->limit($options['num'])
            ->get('comments')->result();
        return array(
            'options' =>$options,
            'comments'  => $comments
        );

    }
}