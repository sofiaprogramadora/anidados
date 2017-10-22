class CommentsController < ApplicationController
  # GET /posts/:post_id/comments
  # GET /posts/:post_id/comments.xml
  def index
    post = Post.find(params[:post_id])
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you get all the comments of this post
    @comments = post.comments

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /posts/:post_id/comments/:id
  # GET /comments/:id.xml
  def show
    post = Post.find(params[:post_id])
  	@comments = post.comments
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you retrieve the comment thanks to params[:id]
    @comment = post.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /posts/:post_id/comments/new
  # GET /posts/:post_id/comments/new.xml
  def new
    post = Post.find(params[:post_id])
  	@comments = post.comments
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you build a new one
    @comment = post.comments.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /posts/:post_id/comments/:id/edit
  def edit
    post = Post.find(params[:post_id])
  	@comments = post.comments
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you retrieve the comment thanks to params[:id]
    @comment = post.comments.find(params[:id])
  end

  # POST /posts/:post_id/comments
  # POST /posts/:post_id/comments.xml
  def create
    post = Post.find(params[:post_id])
  	@comments = post.comments
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you create the comment with arguments in params[:comment]
    @comment = post.comments.create({post_id: params[:post_id], body: params["comment"][:body] })

    respond_to do |format|
      if @comment.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@comment.post, @comment], :notice => 'Comment was successfully created.') }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.xml  { render :xml => @comment, :status => :created, :location => [@comment.post, @comment] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posts/:post_id/comments/:id
  # PUT /posts/:post_id/comments/:id.xml
  def update
    post = Post.find(params[:post_id])
  	@comments = post.comments
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you retrieve the comment thanks to params[:id]
    @comment = post.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes({post_id: params[:post_id], body: params["comment"][:body] })
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to([@comment.post, @comment], :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/:post_id/comments/1
  # DELETE /posts/:post_id/comments/1.xml
  def destroy
    post = Post.find(params[:post_id])
  	@comments = post.comments
    #1st you retrieve the post thanks to params[:post_id]
    #2nd you retrieve the comment thanks to params[:id]
    @comment = post.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      #1st argument reference the path /posts/:post_id/comments/
      format.html { redirect_to(post_comments_url) }
      format.xml  { head :ok }
    end
  end
end