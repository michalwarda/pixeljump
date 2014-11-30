class @CharacterCreator
  @createSprite: (spritePath) ->
    characterTexture = PIXI.Texture.fromImage(spritePath)
    new PIXI.Sprite(characterTexture)

  @createCharacter: (x, y, spritePath) =>
    character = @createSprite(spritePath)
    character.position.x = x
    character.position.y = y
    character.anchor.x = 0.5
    character.anchor.y = 0.5
    return character