Craftdash.Views.Servers ||= {}

class Craftdash.Views.Servers.ServerView extends Backbone.View
  template: JST["backbone/templates/servers/server"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
