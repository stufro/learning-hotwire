
================================
app/javascript/controllers/hello_controller.js - Create Stimulus Controller
```javascript
import { Controller } from "stimulus"

export default class extends Controller {
  connect() {
    console.log("Hello World!");
  }
}
```

app/views/tweets/index.html.erb - Connect element to controller
```html
<div class="card" data-controller="hello">
```

================================
app/views/tweets/index.html.erb - below controller card
```html
<input type="text" data-hello-target="input"> 
<button class="primary-button" data-action="click->hello#greet">Say Hello</button>
<p data-hello-target="output"></p>
```

app/javascript/controllers/hello_controller.js
```javascript
static targets = ["input", "output"];
&
greet() {
  this.outputTarget.innerHTML = `Hello ${this.inputTarget.value}`;
}
```


================================
app/views/tweets/_form.html.erb
```html
<div class="field" data-controller="tweet">
  <%= form.label :body %>
  <%= form.text_field :body, autocomplete: "off", "data-action" => "keyup->tweet#updateCharsRemaining", "data-tweet-target" => "tweetBody" %>
  <span data-tweet-target="charactersRemaining">140</span>
  <span> characters remaining</span>
</div>
```

app/javascript/controllers/tweet_controller.js
```javascript
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["charactersRemaining", "tweetBody"];
  
  updateCharsRemaining() {
    this.charactersRemainingTarget.innerHTML = 140 - this.tweetBodyTarget.value.length;
  }
}
```