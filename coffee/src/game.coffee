class @Game
  constructor: () ->
    @stage = PixiCanvasSetup.CreatePixiStage(0x4DD0E1)
    @renderer = PixiCanvasSetup.CreatePixiRenderer(540, 960)
    @gravity = new Gravity
    @isCharacterDefined = false
    
    PixiCanvasSetup.RenderPixiStage(@renderer, @stage)
    PixiCanvasSetup.AppendRendererViewToBody(@renderer)

    @updateGame()

  updateGame: =>
    @updateCharacterPosition() if @isCharacterDefined
    PixiCanvasSetup.RenderPixiStage(@renderer, @stage)
    requestAnimFrame(@updateGame)

  addCharacter: (x, y, spritePath) =>
    character = CharacterCreator.createCharacter(x, y, spritePath)
    character.velocity = new CharacterVelocity
    @isCharacterDefined = true
    @stage.addChild(character)

  addBounds: (spritePath) ->
    leftBound = BoundsCreator.createLeftBound(spritePath)
    @stage.addChild(leftBound)
    rightBound = BoundsCreator.createRightBound(spritePath)
    @stage.addChild(rightBound)

  updateCharacterPosition: () ->
    @stage.children[0].velocity.updateCharacterVelocity()
    @stage.children[0].position.x = @stage.children[0].position.x + @stage.children[0].velocity.x
    @stage.children[0].position.y = @stage.children[0].position.y + @stage.children[0].velocity.y