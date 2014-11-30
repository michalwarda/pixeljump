class @CharacterVelocity
  constructor: () ->
    @x = 0
    @y = 0

  updateCharacterVelocity: () =>
    @x = @x + game.gravity.velocity if @x > game.gravity.velocity
