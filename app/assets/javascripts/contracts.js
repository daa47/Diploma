$(function() {
    $("#contract_schoolkid_tokens").tokenInput("/schoolkids.json", {
        crossDomain: false,
        prePopulate: $("#contract_schoolkid_tokens").data("pre"),
        theme: 'facebook',
        hintText: 'Введите Фамилию, Имя или Номер класса.',
        noResultsText: 'Не найдено',
        searchingText: "Поиск...",
        tokenLimit: "1"
    });
});

$(function() {
        var dates = $( "#contract_start_date, #contract_finish_date" ).datepicker({
            defaultDate: "+1w",
            changeMonth: true,
            numberOfMonths: 1,
            dateFormat: "dd.mm.yy",
            buttonImageOnly: true,
            changeYear: true,
            showButtonPanel: true,
            onSelect: function( selectedDate ) {
                var option = this.id == "contract_start_date" ? "min_Date" : "max_Date",
                instance = $( this ).data( "datepicker" ),
                date = $.datepicker.parseDate(
                    instance.settings.dateFormat ||
                        $.datepicker._defaults.dateFormat,
                    selectedDate, instance.settings );
                dates.not( this ).datepicker( "option", option, date );
            }
        });
});

$('#contract_period_2').live("click", function() {
        $('#hide_field').hide('slow');
    } );

$('#contract_period_1').live("click", function() {
        $('#hide_field').show('slow');
    } );

$('#contract_period_0').live("click", function() {
        $('#hide_field').show('slow');
    } );
