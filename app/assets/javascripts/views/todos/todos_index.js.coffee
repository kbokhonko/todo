class Todoapp.Views.TodosIndex extends Backbone.View

  tagName: 'li'

  template: JST['todos/index']

  events:
    "click a.destroy"  : "clear"
    "dblclick div.todo"  : "edit",
    "keypress input.title_edit"  : "updateOnEnter"
    "blur input.title_edit" : "close"
    "click input#toggle"  : "toggleChange"

  initialize: (todo) ->
    @todo = todo.model
    @model.bind('destroy', this.remove, this);
    @model.bind('change', this.render, this);

  render: ->
    $(@el).html(@template(todo: @todo))
    this

  clear: ->
    this.model.destroy()
    this.remove()

  edit: ->
    this.$el.find('div.title').addClass("hidden")
    input = this.$el.find('input.title_edit')
    input.removeClass("hidden")
    input.addClass("show")

  updateOnEnter: (e) ->
    if e.keyCode == 13 then this.close()

  close: ->
    input = this.$el.find('input.title_edit')
    this.model.save content: input.val()
    input.removeClass("show")
    input.addClass("hidden")
    this.$el.find('div.title').removeClass("hidden")
    this.$el.find('div.title').addClass("show")
    this.render()

  toggleChange: ->
    isChecked = (if this.$el.find('input#toggle').attr("checked") then true else false)
    this.model.save done: isChecked










