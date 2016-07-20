<app>
  <div class="container">
    <p><input type="text" onclick="{ select }" value="{ result }"></p>
    <p><div id="btn" onclick="{ generate }">Generate Password</div></p>

    <div id="title">Options</div>
    <div id="options">
      <p>
        Length（{ pass_len }）: <input type="range" id="slider" value="8" min="6" max="18" onchange="{ change_len}">
      </p>
      <p>
        Numbers?: <input type="checkbox">
        Symbols?: <input type="checkbox">
      </p>
    </div>
  </div>

  <script>
    // password
    this.result = '';
    // setting password length
    this.pass_len = 8

    // generate password
    generate(e) {
      // initialization
      this.result = ''
      var seed = 'abcdefghijklmnopqrstuvwxyz'
      var len  = this.pass_len
      
      for (var i = 0; i < len; i++) {
        this.result += seed[Math.floor(Math.random() * seed.length)]
      }
    }
    
    // select password
    select(e) {
      e.target.select()
    }

    // change password length
    change_len(e) {
      this.pass_len = e.target.value
    }
  </script>
</app>
