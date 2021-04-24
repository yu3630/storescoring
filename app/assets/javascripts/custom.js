    jQuery(document).bind('ready ajaxComplete', function() {
      $('.select_store').change(function() {
          $(this).parent().submit();
        });
    });