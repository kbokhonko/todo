window.Todoapp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->  
   new Todoapp.Routers.TodoApp
   Backbone.history.start()

$(document).ready ->
  Todoapp.initialize()
