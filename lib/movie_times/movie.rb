class MovieTimes::Movie 
  attr_accessor :title, :rel_date, :url, :summary
  
  def initialize(title = nil, url = nil)
    @title = title
    @url = url
  end

  def self.all
    @@all ||= scrape_coming_soon
  end
  
  def self.find(id)  
    # Scrape IMDB and return movie premiere listings based on that data 
    self.all[id-1]  
  end 
  
  def self.find_by_title(title) 
    self.all.detect do |m|
      m.name.downcase.strip == name.downcase.strip ||
      m.name.spli("(").first.strip.downcase == name.downcase.strip
    end 
  end 
  
  def rel_date
    @rel_date ||= rel_date_doc.search("p.releaseDate").text.strip
  end 
  
  def summary
    @summary ||= plot_summary_doc.search("p.plotSummary").text.strip
  end 
    
  def self.scrape_coming_soon
    doc = Nokogiri::HTML(open("https://www.imdb.com/coming-soon"))
        
    titles = doc.search("h4[itemprop='title'] a[itemprop='url']")
    titles.collect{|e| new(e.text.strip, "http://imdb.com#{e."href").split("?").first.strip}")}
  end 
  
  def plot_summary_doc
    @plot_summary_doc ||= Nokogiri::HTML(open("#{self.url}plotsummary"))
  end 
  
  def doc 
    @doc ||=Nokogiri::HTML(open(self.url))
  end 
  
end 

