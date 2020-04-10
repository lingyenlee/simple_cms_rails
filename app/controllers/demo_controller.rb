class DemoController < ApplicationController
  layout false
  def index
    render('index')
  end

  def hello
    @id = params['id']
    @page = params[:page]
    render('hello')
  end

  def other_hello

    redirect_to(:action => 'hello')
  end

  def lynda
    redirect_to('https://www.lynda.com')
  end

end
