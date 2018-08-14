function copy(id) {
  document.getElementById(id).select();
  document.execCommand('copy');
}
