{{ if posts }}
    <div class="row-fluid blog-list">
        {{ posts }}
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
                    
                </div>
                <div class="post-descr">
                    {{ intro }}
                </div>

                <div class="post-meta-bot clearfix">
                    <a href="{{url}}" class="btn btn-danger pull-left">
                        {{helper:lang line="blog:read_more_label"}}
                    </a>
                    <a href="{{url}}" class="link-comments"><i class="icon-comments"></i>{{ comment_count }}</a>
                </div>
                {{if exists image:img}}
                </div>
                {{endif}}     
            </div>

        </article>
   
        {{ /posts }}

    </div>
    
	{{ pagination }}

{{ else }}
	
	{{ helper:lang line="blog:currently_no_posts" }}

{{ endif }}



                         
                            
               