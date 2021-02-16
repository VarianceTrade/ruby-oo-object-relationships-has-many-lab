class Post
    #all is a class variable set to an array
    @@all = []  # ??? Why is this an error ???
    @@post_count


    attr_accessor :title, :author
    def initialize(title)
      @title = title
      @@all << self  # Why is this an error?
    end


    # create a setter for author
    # that sets the post's author to the author paramter
    # and adds the post to the author's posts

    def author=(author)
        @author = author
        author.posts << self
    end

    def self.all
         # method that returns an array of all post INSTANCES
        @@all # << self??? 
    end


    def add_post                            
        @title << title

    end
  
    def author_name
        # return nil for if author name
      if @author == nil
        return nil
      else
        @author.name
      end
    end
  end



