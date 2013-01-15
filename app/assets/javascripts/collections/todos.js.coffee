class Todoapp.Collections.Todos extends Backbone.Collection

  url: '/todos'

  comparator: (todo) ->
    return todo.get('order')

  initialize: ->
    @model = Todoapp.Models.Todo

  completed: ->
    this.filter (todo) -> todo.get('done')

  remaining: ->
    @without.apply this, @completed()
