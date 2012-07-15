class NewsfeedsController < ApplicationController

  def index
    params[:main] ||= 'news'
    params[:sub] ||= 'home'

    @news = Feedzirra::Feed.fetch_and_parse(Newsfeed.get_feed(params[:main], params[:sub]))
    @title = @news.description.present? ? @news.description.titlecase : "AwesomeNola.com"
  end
end
