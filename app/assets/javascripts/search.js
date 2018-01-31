document.addEventListener('turbolinks:load', function() {
  $input = $("[data-behavior='autocomplete']")

  var options = {
    getValue: "name",
    url: function(phrase) {
      return "/search.json?q=" + phrase;
    },
    categories: [
      {
        listLocation: "documents",
        header: "<strong>Movies</strong>",
      }
    ],
    list: {
      onChooseEvent: function() {
        var url = $input.getSelectedItemData().url
        console.log(url)
      }
    }
  }

  $input.easyAutocomplete(options)
});

