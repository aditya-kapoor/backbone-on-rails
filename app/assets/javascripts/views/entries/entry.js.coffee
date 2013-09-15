class Raffler.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: "li"

  initialize: ->
    @model.on('change', @render, this)
    @model.on('highlight', @highlightWinner, this)

  events: ->
    "click": "showEntry"

  highlightWinner: ->
    $('.winner').removeClass("highlight")
    @$('.winner').addClass("highlight")


  render: ->
  	$(@el).html(@template(entry: @model))
  	this

  showEntry: ->
    Backbone.history.navigate("entries/#{@model.get('id')}", true)