class PagesController < ApplicationController
  def index
    @pages = Page.last(5)
    render :index
  end

  protected

  def last_pages_as_json
    Page.last(10).map(&:as_json)
  end
end
