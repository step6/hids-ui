# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('.gridster ul').gridster({
        widget_margins: [10, 10],
        widget_base_dimensions: [450, 200]
    });

    gridster = $(".gridster ul").gridster().data('gridster')

    addWidget = (widget) ->
    	gridster.add_widget(widget, 1, 1)

    for widget in window.widgets
    	$.get widget, addWidget, 'html'
