###
The marquee
###

# Deps
require './style.styl'

animation =
	duration: 2000
	easing: 'easeInOutSine'

# Component definition
module.exports =

	data: ->
		index: 0
		length: 0
		slides: null

	ready: ->
		setInterval @nextSlide, 6000
		@slides = $(@$el.nextSibling).find('.slide')
		@length = @slides.length

	methods:

		nextSlide: ->
			slides = $(@$el.nextSibling).find('.slide')
			@slides.eq(@index).velocity 'fadeOut', animation
			@index++
			@index = 0 if @index >= @length
			@slides.eq(@index).velocity 'fadeIn', animation
