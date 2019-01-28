class Application

@@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last #turn /item/vase into vase
      item_price =  @@items.find{|i| i.price == item_price}
       if item_price != nil
        resp.write item_price
      else
      resp.write "Item not found"
      resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
