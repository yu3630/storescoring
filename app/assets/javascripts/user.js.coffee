jQuery ->
    stores = $('#user_store_id').html()
    $('#user_area_id'). change ->
        area = $('#user_area_id :selected').text()
        option = $(stores).filter("optgroup[label='#{area}']").html()
        if option
            $('#user_store_id').html(options)
        else
            $('user_store_id').enmpty()