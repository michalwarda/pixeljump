describe 'Game', ->
  describe 'addCharacter', ->
    it 'creates and adds a character to stage', ->
      game = new Game
      game.addCharacter(0, 0, 'assets/pixel.png')
      console.log game.stage.children
      # expect(game.stage.children).toBe()
