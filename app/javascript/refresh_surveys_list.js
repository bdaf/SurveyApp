function refreshSurveys() {
    $.ajax({
      type: 'GET',
      url: '/surveys/refresh',
      success: function(updated_surveys_list_in_html) {
        let updatedUlElement = new DOMParser().parseFromString(updated_surveys_list_in_html, "text/xml");
        document.getElementById("surveys_list").innerHTML = updatedUlElement.firstChild.innerHTML;
      }
    });
}
