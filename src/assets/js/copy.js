function copy(id) {
  var span = document.createElement('span'),
      textNode = document.createTextNode("Copied!"),
      input = id + "-input",
      buttonId = id + "-btn",
      buttonDiv = document.getElementById(buttonId),
      div = document.createElement('div');
  
  document.getElementById(input).select();
  document.execCommand('copy');
  
  buttonDiv.appendChild(div);
  div.appendChild(span);
  div.setAttribute("id", "copied");
  span.appendChild(textNode);
  span.setAttribute("style", "margin-left: .3em; position: absolute; background-color: rgba(246, 246, 246, 1); color: rgba(64, 64, 64, 1); padding: .3em; border: 1px rgba(222, 222, 222, 1) solid; border-radius: .2em;");
  
  setTimeout(function() {
    buttonDiv.removeChild(div);
  }, 3000);
}

function showTab(id) {
  var tabId = id + "-tab",
      tabPane = document.getElementById(id),
      tab = document.getElementById(tabId);
  
  document.querySelectorAll('.active').forEach(function (item) {
    item.classList.remove('active', 'show');
  });
  
  tab.classList.add("active");
  tabPane.classList.add("show", "active");
}

