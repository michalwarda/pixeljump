describe "Pixi Stage Creator", ->
  afterEach ->
    document.body.removeChild(document.querySelector('canvas'))
    stage = undefined
    renderer = undefined

  it 'creates a canvas and attaches it to body', ->
    new PixiCanvasSetup()
    canvas = document.querySelector('canvas')

    expect(document.body.contains(canvas)).toBe(true)

  it 'creates a canvas with custom width, height and background color when specified', ->
    new PixiCanvasSetup(100, 200, '0x666666')
    canvas = document.querySelector('canvas')

    expect(document.body.contains(canvas)).toBe(true)
    expect(canvas.width).toBe(100)
    expect(canvas.height).toBe(200)

  it 'creates a window.stage global variable', ->
    new PixiCanvasSetup()
    expect(stage).toBeDefined()

  it 'creates a window.renderer global variable', ->
    new PixiCanvasSetup()
    expect(renderer).toBeDefined()
    