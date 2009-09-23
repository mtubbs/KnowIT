class PagesController < ApplicationController

layout "knowit"

  # Index public method
  def index
    # the first one is getting overridden by the second one.  
    # @pages = Page.find(:all)
    @pages = Page.paginate(:page => params[:page], :per_page => 10, :order => "created_at DESC")
  end

	# Show public method
	def show
    @page = Page.find(params[:id])
	end

	# Actions are public methods
  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to(@page)
    else
      # This line overrides the default rendering behavior, which would have been
      # to render the "create" view.
      render(:action => "new")
    end
  end

  # Action methods are responsible for producing output
  def edit
  end
end
