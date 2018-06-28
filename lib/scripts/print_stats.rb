class PrintStats
  def self.run
    puts "Pages: #{Page.count}"
    puts "Authors: #{Author.count}"
  end
end

PrintStats.run
