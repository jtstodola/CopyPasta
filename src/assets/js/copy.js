function copy(id) {
  document.getElementById(id).select();
  document.execCommand('copy');
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

