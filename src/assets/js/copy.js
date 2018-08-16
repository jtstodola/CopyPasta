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
  span.appendChild(textNode);
  span.setAttribute("style", "margin-left: .3em; position: absolute; background-color: rgba(108, 117, 125, 1); color: rgba(255, 255, 255, 1); padding: .3em; border: 1px black solid; border-radius: .2em;");
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

