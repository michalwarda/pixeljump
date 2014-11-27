describe "Character", ->
  describe "createCharacter", ->
    it 'creates a character with a provided texture and sizes of it and provided place', ->
      character = Character.createCharacter(0, 0, 'assets/pixel.png')
      expect(character).toBeDefined()