
Rails.application.routes.draw do

  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:square_root_target", { :controller=> "calculations", :action => "square_root"})

  get("/random/:min/:max", { :controller=> "calculations", :action => "random_number"})

  get("/payment/:principal/:apr/:years", { :controller=> "calculations", :action => "payment"})
end
