get "/npcs/" do
  all = DB.exec({Int32, Int32, String}, "SELECT id, npc_id, name FROM npcs;")
  render "src/rpce/webroot/npcs/index.ecr", "src/rpce/webroot/layouts/layout.ecr"
end

# get "/npcs/new" do
#   render "src/rpce/webroot/npcs/new.ecr", "src/rpce/webroot/layouts/layout.ecr"
# end
#
# get "/npcs/edit/:name" do |env|
#   name = env.params.url["name"]
#   render "src/rpce/webroot/npcs/edit.ecr", "src/rpce/webroot/layouts/layout.ecr"
# end
#
# get "/npcs/show/:name" do |env|
#   name = env.params.url["name"]
#   render "src/rpce/webroot/npcs/show.ecr", "src/rpce/webroot/layouts/layout.ecr"
# end
