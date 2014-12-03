$(function () {
    //etablera connection till hubben
    var hub = $.connection.chatHub;

    //här tar klienten emot metoden onrecordhit från servern tillsammans med värdet i hitcount och skriver ut det 
    //till vår html. Detta är vår eventhandler kan man säga. (3)
    hub.client.onRecordHit = function (hitCount) {
        $("#hitCountValue").text(hitCount);
    };

    hub.client.allUsers = function (nameList) {
        var encodedName;
        $.each(nameList, function (index, value) {
            encodedName = $('<div />').text(value).html();
            $('#chatUsers').append('<li>' + encodedName
                + '</li>');
        });

    }

    hub.client.broadcastMessage = function (name, message) {
        var encodedName = $('<div />').text(name).html();
        var encodedMsg = $('<div />').text(message).html();
        $('#chatMessages').append('<li><strong>' + encodedName
            + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
    };

    $('#displayname').val(prompt('Enter your name:', ''));
    //$.connection.hub.start().done(function() { 
    //  chat.server.send($('#displayname').val());
    $('#displayname').text('Du är inloggad som: ' + $('#displayname').val());
    // Set initial focus to message input box.
    //});
    $('#message').focus();
    // Start the connection.

    //här drar vi igång uppkopplingen och ropar på metoderna i back-end. (1)
    $.connection.hub.start().done(function () {
        hub.server.recordHit();

        hub.server.activeUsers($('#displayname').val());

        $('#sendmessage').click(function () {
            hub.server.chatMessage($('#displayname').val(), $('#message').val());

            // Clear text box and reset focus for next comment.
            $('#message').val('').focus();
        });



    });




    //var chat = $.connection.chatHub;
    // Create a function that the hub can call to broadcast messages.
    //chat.client.broadcastMessage = function (name, message) {
    // Html encode display name and message.
    //var encodedName = $('<div />').text(name).html();
    //var encodedMsg = $('<div />').text(message).html();
    // Add the message to the page.
    //$('#discussion').append('<li><strong>' + encodedName
    //  + '</strong>:&nbsp;&nbsp;' + encodedMsg + '</li>');
    //};

    //chat.client.broadcastUsers = function(name) {
    //  var encodedActiveName = $('<div />').text(name).html();
    // $('#displayname').append(encodedActiveName + '<br/>');
    //};
    // Get the user name and store it to prepend to messages.



});
