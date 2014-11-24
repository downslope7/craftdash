Craftdash.Views.Servers ||= {}

class Craftdash.Views.Servers.ShowView extends Backbone.View
  template: JST["backbone/templates/servers/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
