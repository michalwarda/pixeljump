describe 'Pixi Stage Creator', ->
  describe 'CreatePixiStage', ->
    it 'creates a Pixi Stage object with provided background color', ->
      stage = PixiCanvasSetup.CreatePixiStage(0x666666)
      expect(stage).toBeDefined()
      expect(stage.backgroundColorString).toBe('#666666')

  describe 'CreatePixiRenderer', ->
    it 'creates a pixi canvas renderer with custom width and height', ->
      renderer = PixiCanvasSetup.CreatePixiRenderer(100, 200)
      expect(renderer).toBeDefined()
      expect(renderer.width).toBe(100)
      expect(renderer.height).toBe(200)

  describe 'AppendRendererViewToBody', ->
    it 'Appends provided renderer view to body', ->
      renderer = PixiCanvasSetup.CreatePixiRenderer(100, 200)
      PixiCanvasSetup.AppendRendererViewToBody(renderer)

      expect(document.querySelector('canvas')).not.toBe(null)

  describe 'RenderPixiStage', ->
    it 'Renders Pixi Stage', ->
      
    