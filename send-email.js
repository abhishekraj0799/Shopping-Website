var nodemailer = require('nodemailer');
var transporter = nodemailer.createTransport({
     service: 'gmail',
     auth:{
         user: 'iit2019088@iiita.ac.in',
         pass: '.SsH&16!M#'
     }
});

var mailOptions = {
    from: 'iit2019088@iiita.ac.in',
    to: 'ritikkumar814512@gmail.com',
    subject: 'REDSTORE',
    text: ' Dear Customer, Your order has been successfully placed.'
};

transporter.sendMail(mailOptions, function(error,info) {

    if(error){
        console.log(error);
    }
    else{
        console.log('Email sent: ' + info.response);
    }
    
});