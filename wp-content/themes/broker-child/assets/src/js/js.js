/**
 * Created by david_s on 18-Sep-17.
 */

jQuery(".lazy").slick({
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    adaptiveHeight: true,
    slidesToScroll: 1,
    rtl: true,
    dots: false,
    centerMode: true,
    nextArrow: '<i class="fa fa-chevron-right fa-2"></i>',
    prevArrow: '<i class="fa fa-chevron-left fa-2"></i>',
});

/**
 * front page property slider
 */
jQuery(".property-slider").slick({
    infinite: true,
    speed: 300,
    adaptiveHeight: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    rtl: true,
    dots: false,
    rows: 2,
    centerMode: false,
    nextArrow: '<i class="fa fa-chevron-right fa-2"></i>',
    prevArrow: '<i class="fa fa-chevron-left fa-2"></i>',
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                infinite: true,

            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
    ]
});



/**
 * broker page property slider
 */
jQuery(".broker-property-slider").slick({
    infinite: true,
    speed: 300,
    adaptiveHeight: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    rtl: true,
    dots: false,
    rows: 1,
    centerMode: false,
    nextArrow: '<i class="fa fa-chevron-right fa-2"></i>',
    prevArrow: '<i class="fa fa-chevron-left fa-2"></i>',
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                infinite: true,

            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
    ]
});


jQuery(".regular").slick({
    rtl: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: '.slider-car',
    nextArrow: '<i class="fa fa-chevron-right fa-4"></i>',
    prevArrow: '<i class="fa fa-chevron-left fa-4"></i>'
});
jQuery('.slider-car').slick({
    rtl: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    asNavFor: '.regular',
    dots: false,
    centerMode: true,
    focusOnSelect: true,
    nextArrow: '<i class="fa fa-chevron-right fa-4"></i>',
    prevArrow: '<i class="fa fa-chevron-left fa-4"></i>'

});


/**
 * סליידר תעדודות בדף ברוקר
 */


/**
 * broker page property slider
 */
jQuery(".broker-cer-slider").slick({
    infinite: true,
    speed: 300,
    adaptiveHeight: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    rtl: true,
    dots: false,
    rows: 1,
    centerMode: false,
    nextArrow: '<i class="fa fa-chevron-right fa-2"></i>',
    prevArrow: '<i class="fa fa-chevron-left fa-2"></i>',
    responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
                infinite: true,

            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
    ]
});




/*להוסיף פסיקים למספר כדי ליצור מספר יפה יותר*/
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
/*price slider fron page*/

function getVals() {
    // Get slider values
    var parent = this.parentNode;
    var slides = parent.getElementsByTagName("input");
    var slide1 = parseFloat(slides[0].value);
    var slide2 = parseFloat(slides[1].value);
    // Neither slider will clip the other, so make sure we determine which is larger
    if (slide1 > slide2) {
        var tmp = slide2;
        slide2 = slide1;
        slide1 = tmp;
    }

    var displayElement = parent.getElementsByClassName("rangeValues")[0];
    displayElement.innerHTML = slide1 + " - " + slide2;
}



// Initialize Sliders
var sliderSections = document.getElementsByClassName("range-slider");
for (var x = 0; x < sliderSections.length; x++) {
    var sliders = sliderSections[x].getElementsByTagName("input");
    for (var y = 0; y < sliders.length; y++) {
        if (sliders[y].type === "range") {
            sliders[y].oninput = getVals;
            // Manually trigger event first time to display values
            sliders[y].oninput();
        }
    }
}

jQuery(".contact-tab h4").click(function() {
    console.log('dav');
    if (jQuery(".contact-tab").attr('style') == 'transform: translateX(0px); z-index: 5') {
        jQuery(".contact-tab").attr('style', 'transform: translateX(250px); z-index: 7');
    } else {
        jQuery(".contact-tab").attr('style', 'transform: translateX(0px); z-index: 5');
    }
});

/**
 * decimal number commas
 */
function number_format(number, decimals, dec_point, thousands_sep) {

    number = (number + '').replace(/[^0-9+-Ee.]/g, '');
    var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
        dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
        s = '',
        toFixedFix = function(n, prec) {
            var k = Math.pow(10, prec);
            return '' + Math.round(n * k) / k;
        };
    // Fix for IE parseFloat(0.55).toFixed(0) = 0;
    s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
    if (s[0].length > 3) {
        s[0] = s[0].replace(/B(?=(?:d{3})+(?!d))/g, sep);
    }
    if ((s[1] || '').length < prec) {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1).join('0');
    }
    return s.join(dec);
}


/**
 * jquery range front search slider
 */

var minVal = jQuery("#slider-max").attr("min-val");
var maxVal = jQuery("#slider-max").attr("max-val");
var min = 100000;
var max = 10000000;
$(function() {
    $("#slider-range").slider({
        range: true,
        min: min,
        max: max,
        step: 10000,
        values: [100000, 10000000],
        slide: function(event, ui) {
            var minVal = ui.values[0].toLocaleString();
            var maxVal = ui.values[1].toLocaleString();
            jQuery('#min-prop').val(minVal);

            $("#amount").val("₪" + minVal + " - ₪" + maxVal);
        }
    });

    $("#amount").val("₪" + $("#slider-range").slider("values", 0).toLocaleString() +
        " - ₪" + $("#slider-range").slider("values", 1).toLocaleString());

    $('#slider-range').slider({
        change: function(event, ui) {

            var newMin = jQuery('#slider-range').slider("values")[0]; // for slider with single knob or lower value of range
            var newMax = jQuery('#slider-range').slider("values")[1]; // for highest value of range

            console.log(newMin);
            console.log(newMax);

            jQuery('#min-prop').val(newMin);
            jQuery('#max-prop').val(newMax);
        }
    });​
});


// jQuery(function($) {

//     jQuery("#prop-city").autocomplete({
//         source: function(request, response) {
//             jQuery.get("cityAjax", {
//                 url: "http://127.0.0.1/brok/test/",
//             }, function(data) {
//                 // assuming data is a JavaScript array such as
//                 // ["one@abc.de", "onf@abc.de","ong@abc.de"]
//                 // and not a string
//                 response(data);
//             });
//         },
//         minLength: 3
//     })
// })​;

jQuery(function($) {

    $.get("http://localhost:3000/brok/test/").done(function(cityAjax) {
        jQuery("#prop-city").autocomplete({
            source: cityAjax.split(','),
            minLength: 2


        });
    })

})​;


/*tooltip */
jQuery('input').tooltip();




/**
 * menu mobile sub menu toggle
 */


if (window.matchMedia("(min-width: 991px)").matches) {
    jQuery('.menu-item-has-children').hover(function(){
        jQuery(this).find('.sub-menu').slideToggle();
      
    });
  } else {
    jQuery('.menu-item-has-children').click(function(){
        jQuery(this).find('.sub-menu').slideToggle();
      
    });
  }



jQuery('.navbar-toggle-above').click(function(){
    jQuery('.navbar-default').toggleClass('mobile-nav-vis', [1000]);
    $('#menu-ham').toggleClass('open', [1000]);
});
   

document.body.onload = function () {
    var textcontrol = $("#single_broker_main_cont");
    var height = textcontrol.height();
    $('#disable').css('height', height);

};