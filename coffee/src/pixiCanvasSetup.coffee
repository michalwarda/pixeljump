class @PixiCanvasSetup
  @CreatePixiStage: (backgroundColor) ->
    new PIXI.Stage(backgroundColor)

  @CreatePixiRenderer: (canvasWidth, canvasHeight) ->
    PIXI.autoDetectRenderer(canvasWidth, canvasHeight)

  @AppendRendererViewToBody: (renderer) ->
    document.body.appendChild(renderer.view)

  @RenderPixiStage: (renderer, stage) ->
    renderer.render(stage)
