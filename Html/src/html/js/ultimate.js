function FormatTheTime() {
    var Time = new Date();

    var day = String(Time.getUTCDate()).padStart(2, '0');
    var month = String(Time.getUTCMonth() + 1).padStart(2, '0');
    var year = Time.getUTCFullYear();
    var hours = String(Time.getUTCHours()).padStart(2, '0');
    var minutes = String(Time.getUTCMinutes()).padStart(2, '0');
    var seconds = String(Time.getUTCSeconds()).padStart(2, '0');
    var milliseconds = String(Time.getUTCMilliseconds()).padStart(3, '0');

    var formattedTime = day + '.' + month + '.' + year + ';' + hours + ':' + minutes + ':' + seconds + ':' + milliseconds;

    return formattedTime;
    //use FormatTheTime()
    //bsp.: alert(FormatTheTime());
    //time is the UTC time (time zone of server)
};
