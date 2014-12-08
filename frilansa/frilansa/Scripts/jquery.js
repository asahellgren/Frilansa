$(function () {
    //etablera connection till hubben
    var hub = $.connection.chatHub;

    //här tar klienten emot metoden onrecordhit från servern tillsammans med värdet i hitcount och skriver ut det 
    //till vår html. Detta är vår eventhandler kan man säga. (3)

    hub.client.allUsers = function(users) {
        var encodedName;
            $('#namesOfActiveUsers').html("");
        $.each(users, function(index, value) {
            encodedName = value.Name;
           
            $('#namesOfActiveUsers').append(encodedName
                + '<br />');
         
        });
    };

    hub.client.onRecordHit = function (hitCount) {
        $('#hitCountValue').text(hitCount);
    };

    hub.client.broadcastMessageCaller = function (name, message) {
        var encodedMsg = $('<div />').text(message).html();
        $('#chatMessages').append('<p class="caller"><strong>Jag:&nbsp;&nbsp;</strong>' + encodedMsg + '</p>');
    };

    hub.client.broadcastMessageOthers = function (name, message) {
        var encodedName = $('<div />').text(name).html();
        var encodedMsg = $('<div />').text(message).html();
        $('#chatMessages').append('<p class="others"><strong>' + encodedName
            + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</p>');
    };

    $('#displayname').val(prompt('Enter your name:', ''));
    //$.connection.hub.start().done(function() { 
    //  chat.server.send($('#displayname').val());
    $('#displayname').append('Du är inloggad som: <strong>' + $('#displayname').val() + '</strong>');
    // Set initial focus to message input box.
    //});
    $('#message').focus();
    // Start the connection.

    //här drar vi igång uppkopplingen och ropar på metoderna i back-end. (1)
    $.connection.hub.start().done(function () {
        
        hub.server.activeUsers($('#displayname').val());

        hub.server.recordHit();

        $('#sendmessage').click(function () {
            hub.server.chatMessage($('#displayname').val(), $('#message').val());

            // Clear text box and reset focus for next comment.
            $('#message').val('').focus();
        });
    });

    //Här slutar koden för chatten

   //Här kan vi skriva ny jqyery kod
});
