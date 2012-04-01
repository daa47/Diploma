$(function() {
        $("#schoolkid_school_group_tokens").tokenInput("/school_groups.json", {
                crossDomain: false,
                    prePopulate: $("#schoolkid_school_group_tokens").data("pre"),
                    theme: 'facebook',
                    hintText: 'Введите Номер класса или Год.',
                    noResultsText: 'Не найдено',
                    searchingText: "Поиск...",
                    tokenLimit: "1"
                    });
    });

$(function() {
        $( "#schoolkid_birthday" ).datepicker();
    });
