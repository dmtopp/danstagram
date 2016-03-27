var photoInput = document.getElementById("photo");
photoInput.addEventListener("change", photoHandler, false)

function photoHandler(){
  var preview = document.getElementById("preview");
  var photo = document.querySelector('input').files[0];
  var imageType = /^image\//;

  if (imageType.test(photo.type)) {
    var img = document.createElement('img');
    img.classList.add("obj");
    img.file = photo;

    preview.appendChild(img)

    // create a thumbnail preview
    // still not 100% sure what this does--
    // https://developer.mozilla.org/en-US/docs/Using_files_from_web_applications
    var reader = new FileReader();
    reader.onload = (function(anImg) {
      return function(e) {
        anImg.src = e.target.result;
      };
    })(img);
    reader.readAsDataURL(photo)

    // actually upload the file
    function FileUpload(img, file) {
      var reader = new FileReader();
      var xhr = new XMLHttpRequest();
      this.xhr = xhr;

      var self = this;
      xhr.open("POST", '/photos/upload');
      xhr.overrideMimeType('text/plain; charset=x-user-defined-binary');
      reader.onload = function(e) {
        xhr.send(e.target.result);
      };
      reader.readAsBinaryString(file);
    }

    new FileUpload(img, img.file);
  }



};
