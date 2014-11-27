class @Game
  constructor: () ->
    @stage = PixiCanvasSetup.CreatePixiStage(0x4DD0E1)
    @renderer = PixiCanvasSetup.CreatePixiRenderer(540, 980)
    
    PixiCanvasSetup.RenderPixiStage(@renderer, @stage)
    PixiCanvasSetup.AppendRendererViewToBody(@renderer)

    @updateGame()

  updateGame: =>
    PixiCanvasSetup.RenderPixiStage(@renderer, @stage)
    requestAnimFrame(@updateGame)

  addCharacter: (x, y, spritePath) =>
    character = Character.createCharacter(x, y, spritePath)
    @stage.addChild(character)