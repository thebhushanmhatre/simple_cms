class DemoController < ApplicationController

  layout false

  def index
    render('index')
  end

  def hello
    @myArray = [1,12,13,14]
    @page = params[:page]
    @id = params[:id]
    render('hello')
  end

  def other_hello
    # redirect_to(:controller => 'demo', :action => 'index')
    # Since its already in Demo Controller
    redirect_to(:action => 'index') # redirect_to('index') <- This doesn't work
  end

  def escape_output
  end

end
