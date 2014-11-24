class Craftdash.Models.Server extends Backbone.Model
  paramRoot: 'server'

  defaults:
    hostname: null
    username: null
    private_key: null
    public_key: null

class Craftdash.Collections.ServersCollection extends Backbone.Collection
  model: Craftdash.Models.Server
  url: '/servers'
