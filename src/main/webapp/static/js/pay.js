const MONEY = [10, 30, 60];
$(function(){
    $(".channels").children(":first").addClass("checked");
    $(".channels").children(":first").children(".icon-corner-checked").show();
    $(".goods").children(":first").addClass("checked");
    $(".goods").children(":first").children(".icon-corner-checked").show();
    channelId = 0;
    money = MONEY[0];
});

$(".channel").click(function(){
    $(".channel").removeClass("checked");
    $(this).addClass("checked");
    $(".channel").children(".icon-corner-checked").hide();
    $(this).children(".icon-corner-checked").show();
    channelId = $(".channel").index(this);
});
$(".goods-items").click(function(){
    $(".goods-items").removeClass("checked");
    $(this).addClass("checked");
    $(".goods-items").children(".icon-corner-checked").hide();
    $(this).children(".icon-corner-checked").show();
    money = MONEY[$(".goods-items").index(this)];
});
