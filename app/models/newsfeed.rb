class Newsfeed < ActiveRecord::Base

  FEEDS = {
    :news => {
      :home => "http://blog.nola.com/news_impact/atom.xml",
      :crime => "http://blog.nola.com/crime_impact/atom.xml",
      :politics => "http://blog.nola.com/politics/atom.xml",
      :education => 'http://blog.nola.com/education_impact/atom.xml',
      :traffic => 'http://blog.nola.com/traffic/atom.xml',
      :opinions => "http://blog.nola.com/opinions_impact/atom.xml"
    },
    :business => {
      :home => "http://blog.nola.com/business_impact/atom.xml",
      :hollywood_south => "http://topics.nola.com/tag/hollywood-south/atom.xml",
      :science_and_technology => "http://impact.nola.com/science/atom.xml",
      :real_estate => 'http://impact.nola.com/realestatetransfers/atom.xml',
      :corporate_earnings => "http://topics.nola.com/tag/corporate-earnings/atom.xml"
    },
    :sports => {
      :home => "http://blog.nola.com/sports_impact/atom.xml",
      :saints => "http://blog.nola.com/saints_impact/atom.xml",
      :hornets => "http://blog.nola.com/hornets_impact/atom.xml",
      :lsu => "http://blog.nola.com/lsu_impact/atom.xml",
      :tulane => "http://blog.nola.com/tulane_impact/atom.xml"
    }
  
  }
  
  def self.headers
    FEEDS.collect{|x,k| x.to_s}
  end
  
  def self.subheaders(main)
    FEEDS[main.to_sym].collect{|x,k| x.to_s}
  end
  
  def self.get_feed(main, sub)
    FEEDS[main.to_sym][sub.to_sym]
  end

end
