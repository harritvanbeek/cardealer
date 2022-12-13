var selectedCategory = $('#home');

var currentVehicleData = null;
var inWorldMap = false;

$(document).ready(function(){
    $('.container').hide();
    
    window.addEventListener('message', function(event){
        var eventData = event.data;
        if (eventData.action == "ui") {
            if (eventData.ui) {
                $('.container').fadeIn(200);
                getVehicles();
            } else {
                $('.container').fadeOut(200);
            }
        }
    })

    $('[data-toggle="tooltip"]').tooltip();
    
    $('.vehicle-category').click(function(e){
        e.preventDefault();
        var vehicleCategory = $(this).attr('id');
        
        $(this).addClass('selected');
        if (selectedCategory !== null && selectedCategory !== this) {
            $(selectedCategory).removeClass('selected');
        }

        if (vehicleCategory == "home") {
            resetVehicles()
            $('.vehicle-shop-home').show();
        } else if (vehicleCategory == "getCatalogus") {
            if ($('.vehicle-shop-home').css("display") !== "none") {}
                
                $('.vehicles').html("");
                $('.vehicles').append('<div class="row"></div>');
                $.post('http://pepe-carshowroom/getCatalogus', JSON.stringify({}), function(data){                    
                    for (const [key, value] of Object.entries(data)) {
                      var template = 
                            '<div class="col-md-4">' +
                                '<a class="setCatalogus" id='+value['name']+'>' +
                                    '<div class="card">' +
                                        '<div class="card-img-top top-assets" style="background-image: url('+value['img']+');"></div>'+
                                        '<div class="card-body">' +
                                            '<center>'+value['label']+'</center>'+                                
                                        '</div>'+
                                    '</div>'+
                                '</a>'+
                            '</div>';

                            $('.vehicles').find('.row').append(template);                                                    
                     };
                     
                     setCatalogus();

                });                
                $('.vehicle-shop-home').fadeOut(100);            
        }        
        selectedCategory = this;
    });
});


function setCatalogus(){
    $('.setCatalogus').click(function(e){
        e.preventDefault();

        $('.vehicles').html("");
        $('.vehicles').append('<div class="row"></div>');

        var setCatogory = $(this).attr('id');
        $.post('http://pepe-carshowroom/getVehicles', JSON.stringify({setCatogory}), function(data){
            for (const [key, value] of Object.entries(data)) {
                
                var template = 
                    '<div class="col-md-4" style="padding-bottom:20px;">' +
                        '<div class="card">' +
                            '<div class="card-img-top top-assets" style="background-image: url('+value.assets+');"></div>'+        
                            '<div class="card-body">' +
                                '<div> '+ value.label +' </div>' +
                                
                                '<div>' +                                
                                    '€ ' + value.price + 
                                    '<div class="float-right">'+ 
                                        '<a class="spawnVehicle" id="'+ value.name +'" style="padding-right:10px;"><i class="far fa-eye"></i></a>'+
                                        '<a class="buyVehicle" id="'+ value.name +'"><i class="fas fa-shopping-cart"></i></a> '+
                                    '</div>' + 
                                '</div>' + 
                            '</div>' +
                        '</div>' +
                    '</div>';
                    
                    $('.vehicles').find('.row').append(template); 
            };

            spawnVehicle();
            buyVehicle();
        });
    });
}

function buyVehicle(){
    $('.buyVehicle').click(function(e){
        e.preventDefault();
        $('.vehicles').html("");       
        
        var buyVehicle = $(this).attr('id');
        
        $.post('http://pepe-carshowroom/thisVehicle', JSON.stringify({vehicleName:buyVehicle}), function(data){            
            console.log(data.name);
            var template = '<div class="buy-vehicles">'+
                                '<div class="added-vehicle">'+
                                    '<table>'+
                                        '<tr>'+
                                            '<td>Voertuig : </td>'+
                                            '<td id="added-vehicle-name"> '+data.name+' </td>'+
                                        '</tr>'+
                                        '<tr>'+
                                            '<td>Klasse :</td>'+
                                            '<td id="added-vehicle-class">'+data.brand+'</td>'+
                                        '</tr><tr><td>Prijs :</td><td id="added-vehicle-price">'+data.price+'</td></tr> </table>'+
                                    '<div class="float-right" style="padding-right:20px;">'+
                                        '<button class="btn btn-sm btn-success" id="'+ buyVehicle +'">Buy</button>'+
                                        '<button class="btn btn-sm btn-danger">Cancel</button>'+
                                    '</div>'+
                                    '<div class="clearfix"></div>'+
                                '</div>'+
                            '</div>';
            $('.vehicles').append(template); 
            danger();
            success();        
        });

    });
}

function success(){
    $('.btn-success').click(function(e){
        e.preventDefault();
        var ThisCar = $(this).attr('id');
        $.post('http://pepe-carshowroom/buy-car', JSON.stringify({ThisCar}), function(data){});
        $.post('http://pepe-carshowroom/exit'); 
        $('.vehicles').html("");
        $('.vehicle-shop-home').show();           
    });
}

function danger(){
    $('.btn-danger').click(function(e){
        e.preventDefault();
        $('.vehicles').html("");
        $.post('http://pepe-carshowroom/exit')
        $('.vehicle-shop-home').show();
    });
}

function spawnVehicle(){
    $('.spawnVehicle').click(function(e){
           e.preventDefault();
           var spawnVehicle = $(this).attr('id');
           $.post('http://pepe-carshowroom/exit');
           $.post('http://pepe-carshowroom/spawnVehicle', JSON.stringify({spawnVehicle}));        
    });
}

function getVehicles(){
    $.post('http://pepe-carshowroom/getVehicle', JSON.stringify({}), function(data){
        $('#added-vehicle-name').html(data.name);
        $('#added-vehicle-class').html(data.category);
        $('#added-vehicle-price').html(data.price);
    });
}


function resetVehicles() {
    $('.vehicles').find(".row").html("");
}

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27: // ESC
            $.post('http://pepe-carshowroom/exit')
        break;
    }
});
