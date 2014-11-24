class Craftdash.Routers.ServersRouter extends Backbone.Router
  initialize: (options) ->
    @servers = new Craftdash.Collections.ServersCollection()
    @servers.reset options.servers

  routes:
    "new"      : "newServer"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newServer: ->
    @view = new Craftdash.Views.Servers.NewView(collection: @servers)
    $("#servers").html(@view.render().el)

  index: ->
    @view = new Craftdash.Views.Servers.IndexView(collection: @servers)
    $("#servers").html(@view.render().el)

  show: (id) ->
    server = @servers.get(id)

    @view = new Craftdash.Views.Servers.ShowView(model: server)
    $("#servers").html(@view.render().el)

  edit: (id) ->
    server = @servers.get(id)

    @view = new Craftdash.Views.Servers.EditView(model: server)
    $("#servers").html(@view.render().el)
