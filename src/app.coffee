# import global styles (to force a compile)
require 'style.styl'
require './transitions.styl'
require 'velocity'

Vue.use require 'vue-resource'

App = new Vue
	el: '#app'
	replace: true
	components:
		menu: require './menu/component.coffee'
		marquee: require './marquee/component.coffee'
		kickstarter: require './kickstarter/component.coffee'
		about: require './about/component.coffee'
		press: require './press/component.coffee'
		submissions: require './submissions/component.coffee'
		artists: require './artists/component.coffee'
		photos: require './photos/component.coffee'
		footerCustom: require './footer/component.coffee'

	ready: () ->
		return
