$(function(){ /* to make sure the script runs after page load */
    $("#more_text").hide();
    createMoreButton("seek-desc", $("#more_text").text());
    function createMoreButton(id, content) {
        $('#' + id)
              .attr('id', 'more-text')
              .text("More")
              .on("click",
                  function() {
                      $('#' + id).append(
                          $('<div>')
                              .addClass('full-description')
                              .text(content));
                      createLessButton(id, content);
                  });


    }

    function createLessButton(id, content) {
        $('#' + id)
            .text("Less")
            .on("click",
                function() {
                    $('#' + id).find('.full-description').remove();
                    createMoreButton(id, content)
                });
    }
});

