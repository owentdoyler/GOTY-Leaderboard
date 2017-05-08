$(document).ready(function(){
    $('.secondLayer').hover(function(){
        console.log('foo');
       $('.secondLayer').addClass('secondLayerHover');
    });
});