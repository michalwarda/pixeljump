class @Character
  @createSprite: (spritePath) ->
    characterTexture = PIXI.Texture.fromImage(spritePath)
    new PIXI.Sprite(characterTexture)

  @createCharacter: (x, y, spritePath) =>
    character = @createSprite(spritePath)
    character.position.x = x
    character.position.y = y
    return character