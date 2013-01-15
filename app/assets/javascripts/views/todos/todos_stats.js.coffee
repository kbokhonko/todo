class Todoapp.Views.Stats extends Backbone.View

  template: JST['todos/stats']

  initialize: ->
    @collection.on 'change',  @render
    @collection.on 'destroy',  @render

  render: =>
    $(@el).html(@template(todos: @collection))
    this