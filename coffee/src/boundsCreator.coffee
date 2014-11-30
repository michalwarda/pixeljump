class @BoundsCreator
  constructor: (spritePath) ->

  @createLeftBound: (spritePath) ->
    boundTexture = PIXI.Texture.fromImage(spritePath)
    leftBound = new PIXI.TilingSprite(boundTexture, 25, 960)
    leftBound.position.x = 0
    leftBound.position.y = 0
    return leftBound

  @createRightBound: (spritePath) ->
    boundTexture = PIXI.Texture.fromImage(spritePath)
    rightBound = new PIXI.TilingSprite(boundTexture, 25, 960)    
    rightBound.position.x = 540
    rightBound.position.y = 0
    rightBound.anchor.x = 1
    return rightBound
