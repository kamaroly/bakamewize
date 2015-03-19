
    <div class="row-fluid blog-list no-bar">
	{{ post }}
        <article>
            {{if exists image:img}}
            <div class="boxed-image">
                <div class="post-image">
                    <a href="{{url}}">
                        
                        {{image:img}}
                    </a>
                </div>
                <div class="inside">
            {{else}}
            <div class="boxed-white">
            {{endif}}
                {{if exists category}}
                <div class="text-post-label">
                    <div class="before"></div>
                    <div class="text">{{category:title}}</div>
                    <!--div class="after"></div-->
                </div>
                {{else}}
                <span class="post-label label-cat">{{theme:image file="icons/temp/icon_cat2_1.png"}}</span>
                {{endif}}
                
                <div class="post-title">
                    <h2><a href="{{url}}">{{ title }}</a><h2>
                </div>
                
                <div class="post-meta-top">
                    <span class="post-date"><i class="icon-time"></i>{{ helper:date format="M d Y" timestamp=created_on }}</span>
                    <span class="post-author"><i class="icon-pencil"></i>{{ user:display_name user_id=author_id }}</span>
                    <a href="#comments" class="link-comments pull-right"><i class="icon-comments"></i>{{if ({comments:count entry_id=id entry_key="blog:posts"})}}{{comments:count entry_id=id entry_key="blog:posts"}}{{else}}0{{endif}}</a>
                </div>
                
                <div class="post-descr">
                    {{ body }}
                </div>

                <div class="post-tags clearfix">
                    
                    {{keywords}}
                        <span><i class="icon-tag"></i><a href="{{ url:site }}blog/tagged/{{ keyword }}">{{ keyword }}</a></span>
                    {{/keywords}}
                </div>
                {{if exists image:img}}
                </div>
                {{endif}}     
            </div>

        </article>
         
    {{ /post }}
    </div>
    

<?php
if (Settings::get('enable_comments')){
    echo $this->comments->display() ;
    if ($form_display){echo $this->comments->form();}		
    else{echo sprintf(lang('blog:disabled_after'), strtolower(lang('global:duration:'.str_replace(' ', '-', $post[0]['comments_enabled']))));}  
}
 ?>
    



                         
                            
               