class @PixiCanvasSetup
  constructor: (canvasWidth = 540, canvasHeight = 960, backgroundColor= 0xffffff) ->
    @createPixiStage(backgroundColor)
    @createPixiRenderer(canvasWidth, canvasHeight)
    @appendRendererViewToBody()
    @renderPixiStage()

  createPixiStage: (backgroundColor) ->
    window.stage = new PIXI.Stage(backgroundColor)

  createPixiRenderer: (canvasWidth, canvasHeight) ->
    window.renderer = PIXI.autoDetectRenderer(canvasWidth, canvasHeight)

  appendRendererViewToBody: () ->
    document.body.appendChild(renderer.view)

  renderPixiStage: () ->
    renderer.render(stage)
