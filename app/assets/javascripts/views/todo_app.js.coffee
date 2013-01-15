class Todoapp.Views.TodoApp extends Backbone.View

  el: '#todoapp'

  events:
    "keypress #new-todo": "keyTodoInput"
    "click a.clearcompleted": "clearCompleted"
    #"click a.completed": "filterCompleted"
    #"click a.active": "filterActive"

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @addOne, this)

  render: ->
    @collection.each(@addOne)
    this.renderStats()

  addOne: (todo) ->
    view = new Todoapp.Views.TodosIndex({model: todo})
    $("#todo-list").append(view.render().el)

  renderStats: =>
    view = new Todoapp.Views.Stats({collection: @collection})
    $('#todo-stats').html(view.render().el)

  keyTodoInput: (e) ->
    return if (e.keyCode != 13)
<<<<<<< HEAD
    return if ($('#new-todo').val() == '')
=======
>>>>>>> 2f6ffb6a96b638963dc85514c43df9b4a8d76df6
    this.collection.create
      done: false
      content: $('#new-todo').val()
      order: this.nextOrder()
    $('#new-todo').val('')

  nextOrder: ->
    return 1 if this.collection.length == 0
    return (this.collection.last().get('order') + 1)

  clearCompleted: ->
    _.each @collection.completed(), (todo) ->
      todo.destroy silent: true

  #filterCompleted: ->
  #  console.log 'xddxfsdf'
  #  @collection.reset(@collection.completed())

  #filterActive: ->
  #  @collection.reset(@collection.remaining())