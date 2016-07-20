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
        Numbers?: <input type="checkbox" id="numbers" onclick="{ check_numbers }">
        Symbols?: <input type="checkbox" id="symbols" onclick="{ check_symbols }">
      </p>
    </div>
  </div>

  <script>
    // password
    this.result = ''
    // setting password length
    this.pass_len = 8

    // conditions
    var strings = 'abcdefghijklmnopqrstuvwxyz'
    var numbers = '0123456789'
    var symbols = '!"#$%&-^¥@;:/<>+*{}[]|~='

    // flgs
    var numbers_flg
    var symbols_flg
    

    // generate password
    generate(e) {
      // initialization
      this.result = ''
      var seed = ''
      
      // add upper case
      seed += strings + strings.toUpperCase()

      if (numbers_flg) {
        seed += numbers
      }
      
      if (symbols_flg) {
        seed += symbols
      }
      
      for (var i = 0; i < this.pass_len; i++) {
        this.result += seed[Math.floor(Math.random() * seed.length)];
      }
    }
    
    // numbers check
    check_numbers(e) {
      numbers_flg = e.target.checked
    }
    
    // symbols check
    check_symbols(e) {
      symbols_flg = e.target.checked
    }
    
    // select password
    select(e) {
      e.target.select();
    }

    // change password length
    change_len(e) {
      this.pass_len = e.target.value
    }
  </script>
</app>
