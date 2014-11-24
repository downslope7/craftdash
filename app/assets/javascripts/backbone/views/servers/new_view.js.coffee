Craftdash.Views.Servers ||= {}

class Craftdash.Views.Servers.NewView extends Backbone.View
  template: JST["backbone/templates/servers/new"]

  events:
    "submit #new-server": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (server) =>
        @model = server
        window.location.hash = "/#{@model.id}"

      error: (server, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
