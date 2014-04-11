{View} = require 'atom'

module.exports =
class CakephpView extends View
  @content: ->
    @div class: 'cakephp overlay from-top', =>
      @div "The Cakephp package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "cakephp:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "CakephpView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
