class Application

  #@@songs = [Song.new("Sorry", "Justin Bieber"),
  #          Song.new("Hello","Adele")]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  #  if req.path.match(/items/)

  #    item_price = req.path.split("/items/").last #turn /songs/Sorry into Sorry
  #    items = @@items.find{|s| s.title == item_price}

#      resp.write song.artist

    if req.path=="/items"
      resp.write "Item price."
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
