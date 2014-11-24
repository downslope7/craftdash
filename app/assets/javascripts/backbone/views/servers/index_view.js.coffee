Craftdash.Views.Servers ||= {}

class Craftdash.Views.Servers.IndexView extends Backbone.View
  template: JST["backbone/templates/servers/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (server) =>
    view = new Craftdash.Views.Servers.ServerView({model : server})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(servers: @collection.toJSON() ))
    @addAll()

    return this
