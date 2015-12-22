# import global styles (to force a compile)
require 'style.styl'
require './transitions.styl'
require 'velocity'

Vue.use require 'vue-resource'

Vue.config.debug = true

App = new Vue
	el: '#app'
	replace: true
	components:
		menu: require './menu/component.coffee'
		marquee: require './marquee/component.coffee'
		kickstarter: require './kickstarter/component.coffee'
		about: require './about/component.coffee'
		submissions: require './submissions/component.coffee'
		artists: require './artists/component.coffee'
		photos: require './photos/component.coffee'
		footer: require './footer/component.coffee'

	ready: () ->
		console.log @
		return
