class Todoapp.Routers.TodoApp extends Backbone.Router
  routes:
    '': 'index'

  initialize: ->
    @todos = new Todoapp.Collections.Todos()
    @todos.fetch()

  index: ->
    view = new Todoapp.Views.TodoApp({collection: @todos})
    #$('#todo-list').html(view.render().el)