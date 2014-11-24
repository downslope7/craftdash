Craftdash.Views.Servers ||= {}

class Craftdash.Views.Servers.EditView extends Backbone.View
  template: JST["backbone/templates/servers/edit"]

  events:
    "submit #edit-server": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (server) =>
        @model = server
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
