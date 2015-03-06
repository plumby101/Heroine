<#-- reference to global functions [Required to run macros] -->
<#assign FLTFile= companyhome.childByNamePath["Data Dictionary/Web Scripts/bootstrappedFiles/functions.ftl"] > 
<#include "${FLTFile.nodeRef}" > 
<#assign channel = args["channel"] />
<#assign language = args['language']?lower_case />

<style type="text/css">

/* Full width content */
body {background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Heroine/headerbg.jpg) center 144px repeat-x; background-color: none}
#main {width:100%;}
#header {margin:0 auto; width:950px; float:none;}
#content {width:100%!important; background:none !important}
.dropdownMenuBackground {width: 100%; background-color: #ffffff; height: 365px; display: block; position: absolute; top:0px; left:0; z-index: 900; display: none; border-bottom: 1px solid #000000;}
.holder {max-width: 950px; margin: 0 auto; position: relative;}
.imageoverlay {position: absolute; top:107px; left:81px; z-index: 5; width:790px; background: url(<@imgURL src="overlay.jpg" />); background-size: 100% auto}
.carousel {height: 300px; overflow: hidden; width:910px; position: absolute;left:24px; font-family:GillSans; font-size: 12px}
.carousel a {color: #000000; text-decoration: none}
.slidetext {padding: 10px 0 0 0; line-height: 14px}
.carouselholder {width: 950px; position: relative; margin-top: 0px; border-bottom: 1px solid #cccccc; height: 140px}
.carousel div {margin: 0 10px 0 0}
.leftarrow {width: 26px; height: 124px; display: block; background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_left@2x.png) no-repeat center; position: absolute; top:60px; left: -6px;  background-size: 60% ; z-index: 50}
.rightarrow {width: 26px; height: 124px; display: block; background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_right@2x.png) no-repeat center;position: absolute; top:60px; right: 0px;  background-size: 60%; z-index: 50  }
.slidefade {background: url(<@imgURL src="slidefade.png" />); position: absolute; top: 0; left: 892px; z-index: 5; width: 38px; height: 119px}
.slidefadeleft {background: url(<@imgURL src="slidefadeleft.png" />); position: absolute; top: 0; left: 24px; z-index: 5; width: 38px; height: 119px; display: none}
.heroine_ImageRepeater {width: 316px; height:316px; float:left; position: relative;}
.heroine_ImageHoverBox {position: absolute;width: 316px; height: 316px;  z-index: 10; top: 0; left:0; background-color: rgba(0,0,0,0.25);}
.heroine_ImagesCaption {position: absolute; top:318px; left:0px; width: 316px; padding: 6px; background-color: rgba(255,255,255,0.6); font-size: 14px; height:16px; white-space: nowrap;font-family: ModernNAP-TextItalic, 'MSung PRC Medium'; color:#333333;z-index: 7;overflow: hidden}
.heroineImageHolder {position: absolute; width: 560px; height:316px; overflow: hidden; z-index: 5; top: 0; left:0;}
.photoRow {display: none; clear:both}
#row0, #row1, #row2, #row3 {display:block}
.whitebg {background-color: #ffffff; padding: 0 5px;  text-transform: lowercase; }
.heroineProductRepeater {width: 230px; margin-right: 7px; height:360px; float:left; position: relative;overflow: hidden; position: relative; text-align: center}
.heroineProductImage {width: 237px; float:left; margin:0 3px;overflow: hidden;width:230px; height: 265px }
.heroineProductTitle {font-family: GillSans !important ; font-size: 12px; font-weight: bold; text-align: left; width: 237px;margin:25px 0 0 0; float: left;}
.heroineProductDescription, .heroineProductPrice {font-family: arial; font-size: 12px; text-align: left; width: 217px; margin:2px 0 0 0;}
.heroineProductTitle a, .heroineProductDescription a{color: #000000; text-decoration: none}
.heroineProducts {margin-left: 10px}
.slug {font-family: gillsans; border: 1px solid #999;color:#666;font-size: 10px;padding: 1px 5px;position: relative;top: 4px;text-transform: uppercase;letter-spacing: 1px; margin:0 auto; display: none}
.heroineImageHolder img {margin-right: 90px}
.productHolder {margin-top: 30px; overflow: hidden; position: relative;}
.videoAndTileHolder {height: 589px}
.heroinetitle {position: absolute; top: 18px; width: 100%; height: 30px; font-family: "ModernNAP-Text", 'MSung PRC Medium'; font-size: 24px; text-align: center; text-transform: uppercase;}
.heroineStrapline { width: 60%; left:20%; font-family: gillsanslight; position: absolute; top: 52px; text-align: center; font-size: 16px}
.contentslide {width: 950px; height: 588px; position: relative;}
.imagearea1 {position: absolute; top:0; left:0; z-index: 2}
.imagearea2 {position: absolute; top:0; left:0; z-index: 2}
.contentslidehashtag {position: absolute; left: 0px; top:110px; padding:0px; width: 100%; z-index: 5; text-align: center; font-size: 74px;font-family: "ModernNAP-DisplayItalic", 'MSung PRC Medium'; line-height: 76px}
.contentslideexplanation {position: absolute; left: 25%; top:305px; padding:0px; width: 50%; z-index: 5; text-align: center;  font-size: 17px;font-family: "ModernNAP-TextItalic",'MSung PRC Medium', Arial, "Microsoft YaHei", Hei, Hei Ti, SimHei, STXihei, sans-serif !important }
.contentslidereadmore  {position: absolute; left: 0px; top:510px; padding:0px; width: 100%; z-index: 5; text-align: center;  font-size: 13px;font-family: GillSansBold; text-transform: uppercase; }
.contentWishList {position: absolute; left: 0px; top:480px; padding:0px; width: 100%; z-index: 5; text-align: center;  font-size: 13px;font-family: GillSansBold; text-transform: uppercase; }
.contentcarouselholder {position: relative; width: 100%; }
.leftarrowcontent {width: 26px; height: 500px; display: block; background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_left@2x.png) no-repeat center;  position: absolute; top:0; left: 0; background-size: 50% ; z-index: 10; display: none}
.rightarrowcontent {width: 26px; height: 500px; display: block; background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Adidas-McCartney/content-arrow_right@2x.png) no-repeat center;position: absolute; top:0; right: 1px; background-size: 50%; z-index: 10 }
.contentslidetitle {font-size: 40px;font-family: "ModernNAP-Text", 'MSung PRC Medium'; margin-bottom: 30px }
.contentslidecontent {font-family: gillsanslight; font-size: 14px; line-height: 19px}
.slick-next {display: none !important}
.videooverlaytitle {width: 100%;  font-size:32px ;font-family: "ModernNAP-Display", 'MSung PRC Medium'; text-align: center; color: #ffffff; position: absolute; top: 10%; text-transform: uppercase; }
.videooverlaysubtitle {width: 100%;  font-size:42px ;font-family: "ModernNAP-DisplayItalic", 'MSung PRC Medium'; text-align: center; color: #000000; position: absolute; bottom: 10% }
.heroineAdvert {width: 451px; height: 354px; float: left; background-color: #454545; display: block; background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Adidas-McCartney/advertbg.jpg); margin-left:20px; position: relative;}
.advertLine1 {position: absolute; width: 140px; height: 45px; top: 240px; left: 25px; font-family: gillsanslight; font-size: 13px; color: #ffffff}
.advertLine2 {position: absolute; width: 140px; height: 45px; top: 275px; left: 25px; font-family: "ModernNAP-Display", 'MSung PRC Medium'; font-size: 22px; color: #ffffff; line-height: 19px}
.contentsliderVideo {width: 49%; margin-left: 7%; padding-bottom: 30.8%; position: relative;height: 0; margin-top: 11%}
.contentsliderVideo iframe {  position: absolute; top: 0; left: 0; width: 100%; height: 100%;}
.videoslide {background-image: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Adidas-McCartney/product_slide2.jpg); background-size: 100%}
.cashrocketInstagramHeader {padding:20px 0}
.cashrocketInstagramBox {width: 950px; background-color: #eeeeee;float: left; text-align: center;}
.cashrocketInstagramSubmitPhotoButtonBox {position: absolute;; left:800px; top: 10px; width:120px; height: 120px;  z-index: 50 }
.cashrocketHashtag {width: 950px; font-size: 48px; font-family: ModernNAP-SubheadItalic !important ; height:48px;}
.cashrocketExplanation {width: 950px; font-size: 14px;font-family: GillSans ; width:660px; margin:0 auto;}
.cashrocketInstagramImages {padding-left: 1px; position: relative; background-color: #ffffff; width: 950px; float: left }
.cashrocketInstaImageHolder1,.cashrocketInstaImageHolder2,.cashrocketInstaImageHolder3 {position: absolute; width: 227px; height:227px; overflow: hidden; z-index: 5; top: 0; left:0;}
.cashrocketImagesCaption {position: absolute; top:238px; left:0px; width: 227px; padding: 6px; background-color: rgba(255,255,255,0.6); font-size: 14px; height:16px; white-space: nowrap;font-family: ModernNAP-TextItalic; color:#333333;z-index: 7;overflow: hidden}
.cashrocketImageHoverBox {position: absolute;width: 237px; height: 237px;  z-index: 10; top: 0; left:0; background-color: rgba(0,0,0,0.25);}
.cashrocketImageRepeater1, .cashrocketImageRepeater2, .cashrocketImageRepeater3 {width: 227px; height:227px; float:left; position: relative; padding: 5px}
.advertMobile {width: 30%;margin: 30px auto;border: 1px solid #cccccc;border-radius: 4px;font-family: gillsanslight;font-size: 13px;color: #000000;display: block;float: left;margin-left: 32.5%;padding: 2%;text-align: center;}

.productHolder .slick-slide img {display: inline}
.furtherExplanation {width: 100%; height: 0px; display: none; overflow: hidden; padding: 40px 0; border-bottom: 1px solid #dddddd;}
.stepOne {width: 27%; float: left; margin-right: 9% ; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium' ; font-size: 24px}
.stepTwo {width: 27%;  float: left; margin-right: 9% ; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium'; font-size: 24px}
.stepThree {width: 27%;  float: left; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium'; font-size: 24px}
.instagramExample {width: 90%; margin: 36px 0 0 5%; font-family: GillSans, "微软雅黑", "Microsoft YaHei",Hei,Hei Ti,SimHei,STXihei,sans-serif !important; font-size: 18px; text-align: center; text-transform: uppercase; float: left}
.stepText {font-family:"ModernNAP-Text", 'MSung PRC Medium'; font-size: 14px; line-height: 23px}
.bodyDivider {width: 100%; background: url(http://www.net-a-porter.com/alfresco/nap/webAssets/webPage/Heroine/divider.jpg) center; text-align: center;font-family: gillSans; font-size: 13px; margin:30px 0; min-height: 10px; text-transform: uppercase;}
.whitebg {background-color: none !important}
.ctaArrow {position: relative;bottom:2px;}
.whitebgTitle {font-family: "ModernNAP-DisplayItalic","MSung PRC Medium"}
.stepTitle {font-family: "ModernNAP-Display",'MSung PRC Medium', Arial, "Microsoft YaHei", Hei, Hei Ti, SimHei, STXihei, sans-serif !important; text-align: center;}
.productsIntroTitle {width: 96%; padding-left: 2%; font-size: 24px; text-align: center; margin: 45px 0 0 0 ; font-family: "ModernNAP-Subhead",'MSung PRC Medium', Arial, "Microsoft YaHei", Hei, Hei Ti, SimHei, STXihei, sans-serif !important; }
.productsIntroStrapline {width: 96%; padding-left: 2%; font-size: 17px; text-align: center; margin: 2px 0; font-family: "ModernNAP-TextItalic",'MSung PRC Medium', Arial, "Microsoft YaHei", Hei, Hei Ti, SimHei, STXihei, sans-serif !important; }
.whoAreYou {font-family:"ModernNAP-SuperDisplay" ; font-size: 73px }
.campaignUpdate  {font-family:"ModernNAP-SuperDisplay" ; font-size: 27px; line-height: 16px; text-transform: uppercase;}
.campaignUpdateText { font-family: GillSans; font-size: 14px; text-transform: none}
.termsText {font-family: GillSans; font-size: 10px; width: 100%; float: left; margin: 0 0 20px 0; text-align: center;}
.UNtext { font-family:"ModernNAP-Subhead", 'MSung PRC Medium' ; font-size: 24px; width: 100%; margin:20px 0 15px 0; text-align: center; text-transform: uppercase;}
.UNtextExp { font-family: GillSans; font-size: 14px; width: 100%; text-align: center;}
.shareText { font-family:"ModernNAP-Subhead", 'MSung PRC Medium' ; font-size: 24px; width: 100%; margin:20px 0 15px 0;text-align: center; text-transform: uppercase;}

@media (max-width: 950px) {

  .cashrocketInstagramImages {padding-left: 1px; position: relative; background-color: #ffffff; width: 100%; float: left }
  .cashrocketImageRepeater2 {width: 33%; float:left;height: auto; padding: 0  }
  .cashrocketImageRepeater3 {width: 33%; float:left;height: auto; padding: 0}
  .cashrocketImageRepeater1 {width: 33%;  float:left;height: auto; padding: 0 }
  .cashrocketImagesCaption, .cashrocketImageHoverBox {display: none}
  .cashrocketInstaImageHolder3, .cashrocketInstaImageHolder2, .cashrocketInstaImageHolder1 {width: 100%;height: auto; position: relative;}

}

@media (max-width: 768px) {

  .heroineProducts {margin-left: 0px}
  .ctaArrow {position: relative;top: -1px;}

  .whitebgTitle {background-color: #ffffff; padding:5px;}

    body {background: none!important; background-color: none}

  .rightarrow {display: none}
  .leftarrow {display: none}
  .productHolder {width: 100%; float: left}

  .cashrocketInstagramImages {padding-left: 1px; position: relative; background-color: #ffffff; width: 100%; float: left }
  .cashrocketImageRepeater2 {width: 47%; float:left;height: auto; padding: 0% 1% 0 2% }
  .cashrocketImageRepeater3 {width: 47%; float:left;height: auto; padding: 0% 1% 0% 1% }
  .cashrocketImageRepeater1 {width: 96%;  float:left;height: auto; padding: 2%  }
  .cashrocketImagesCaption, .cashrocketImageHoverBox {display: none}
  .contentslideexplanation {top:285px}
  .contentslidereadmore {top:430px;}
  .cashrocketInstaImageHolder3, .cashrocketInstaImageHolder2, .cashrocketInstaImageHolder1 {width: 100%;height: auto; position: relative;}

  .advertMobile {width: 60%;margin: 0 auto 30px auto;border: 1px solid #cccccc;border-radius: 4px;font-family: gillsanslight;font-size: 13px;color: #000000;display: block;float: left;margin-left: 15%;padding: 5%;text-align: center;}
  .heroineAdvert {display: none}

  .heroineImageHolder img {width: 110px; margin-right: 430px;}
  .stepOne {width: 27%;float: left;margin-right: 6%;font-family: "ModernNAP-SubheadItalic", 'MSung PRC Medium';font-size: 24px;margin-left: 3%;}
  .stepTwo {width: 27%;  float: left; margin-right: 4% ; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium'; font-size: 24px}
  .stepThree {width: 27%;  float: left; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium'; font-size: 24px}

  .instagramExample {font-size: 16px}
  .videooverlaytitle {font-size: 36px}
  .videooverlaysubtitle {font-size: 36px}

  .leftarrowcontent, .rightarrowcontent  {height: 150px; background-position: center}
  .rightarrowcontent  {right:10px; left:auto;}

  .contentcarousel {width: 100%}
  .contentslide {width: 100%; height: auto; position: relative;}
  .imagearea1 {position: relative; top:auto; left:auto; z-index: 2; float: left; background-size: 100% auto}
  .imagearea2 { position: relative; top:auto; left:auto; z-index: 2; float: left; background-size: 100% auto}
  .contentslidetext {position: relative; left: auto; top:auto; padding:0px; background-color: #ffffff; border: none; height: auto; width: 97%; z-index: 5; float: left ;  margin-top: 20px}
  .contentsliderVideo {width: 70%; margin-left: 15%; padding-bottom: 46.8%; position: relative;height: 0; margin-top: 1%}
  .contentcarouselholder {position: relative; width: 96%; left: 2%; float: left; height: 620px; background: url(/alfresco/nap/webAssets/webPage/Heroine/mobile_header.jpg) top no-repeat;}
  .contentslidehashtag {font-size: 38px; top: 187px; line-height: 32px}
  .whoAreYou {background-color: #ffffff; font-size: 18px; padding:5px;}
  .contentslideexplanation {width: 95%; left:2.5%;}
  .bodyDivider {display: none}



  .videoAndTileHolder {height: auto; width:96%; margin-left:2%;}
  .heroinetitle {position: relative; width: 100%; top:auto; float: left; font-family: "ModernNAP-Text", 'MSung PRC Medium'; font-size: 24px; text-align: center; text-transform: uppercase; margin-top: 20px; left:auto;}
  .heroineStrapline { width: 100%; font-family: gillsanslight; position: relative; top:auto; text-align: center; font-size: 16px; top: auto; left:auto;}

  .holder {max-width: 100% !important }
  .carouselholder {width: 96%; position: relative; margin: 20px 0 20px 2%; border-bottom: 1px solid #cccccc; height: 140px; float: left;}
  .imageoverlay {left:0; width: 100%; top:auto; position: relative; float: left}
  
  .slidefade {right:9px; height: 89px}
  .slidefadeleft {height: 89px; left: -6px}
  .carousel {width: 100%; position: relative; float: left; left:auto;}
  .carousel img {width: 99%; }
  .carousel div {margin: 0 0;}

  .heroineProductRepeater {width: 150px; height: 310px}
  .heroineImageHolder img {width: 110px; margin-left: 18px}
  .heroineProductDescription, .heroineProductPrice, .heroineProductTitle    {width: 150px; text-align: center;}
  .heroineProductDescription {text-transform: none;}
  .heroineProductImage {height: 150px}

  .stepOne {width: 27%; float: left; margin-right: 6% ; font-family:"ModernNAP-SubheadItalic" , 'MSung PRC Medium'; font-size: 24px}
  .stepTwo {width: 27%;  float: left; margin-right: 9% ; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium'; font-size: 24px}
  .stepThree {width: 27%;  float: left; font-family:"ModernNAP-SubheadItalic", 'MSung PRC Medium'; font-size: 24px}

}


@media (max-width: 450px) {
  .videooverlaytitle {font-size: 22px}
  .videooverlaysubtitle {font-size: 22px}
  .contentslidereadmore {top:525px;}
  .contentWishList {top:505px;}
  .furtherExplanation {width: 100%; height: 0px; overflow: hidden;border-bottom: 1px solid #dddddd;}
  .stepOne {width: 90%; float: left ; text-align: center; margin: 0 5% }
  .stepTwo {width: 90%;  float: left; text-align: center; margin: 20px 5% }
  .stepThree {width: 90%;  float: left;  text-align: center; margin: 0 5% }
}


</style>

 
     <div class="dropdownMenuBackground"></div>

    <div class="holder">
        <div class="contentcarouselholder">
    <div class="contentcarousel">
        <div class="contentslide"> 
            <div class="contentslidetext">
              <div class="contentslidehashtag"><span class="whoAreYou">${message("whoareyou_" + language)}<Br></span><span class="whitebgTitle" style="font-family:ModernNAP-DisplayItalic","MSung PRC Medium">${message("slide1.title_" + language)}</span></div>
              <div class="contentslideexplanation"><span class="campaignUpdate">${message("update_" + language)}<span><br> <span class="campaignUpdateText">${message("update.text_" + language)}</span></div>
              <div class="contentWishList"><a href="https://www.net-a-porter.com/wishlist/">${message("wishlist.link_" + language)}  <img class="ctaArrow" src="/alfresco/nap/webAssets/webPage/Heroine/arrow.gif" /></a></div>
              <div class="contentslidereadmore"><a href="javascript:showFurtherInformaion()">${message("slide1.readmore_" + language)}  <img class="ctaArrow" src="/alfresco/nap/webAssets/webPage/Heroine/arrow.gif" /></a></div>
              
            </div>
        </div>
  </div>
      </div>
<div class="termsText">${message("terms_" + language)} </div>
    <div class="furtherExplanation">
      
      <div class="UNtext">${message("UN.text_" + language)} </div>
<div class="UNtextExp">${message("UN.tex.exp_" + language)} </div>
<div class="shareText">${message("share.text_" + language)} </div>
        <div class="stepOne"> 
          <div class="stepTitle">${message("step1_title_" + language)}</div>
          <div class="stepText">${message("step1_text_" + language)}</div>
        </div>

        <div class="stepTwo"> 
           <div class="stepTitle">${message("step2_title_" + language)}</div>
          <div class="stepText">${message("step2_text_" + language)}</div>
        </div>

         <div class="stepThree"> 
          <div class="stepTitle">${message("step3_title_" + language)}</div>
          <div class="stepText">${message("step3_text_" + language)}</div>
        </div>

        <div class="instagramExample">${message("example_text_" + language)} </div>


    </div>

 

    <div class="productsIntroTitle">${message("productdivider_text_" + language)}</div>
    <div class="productsIntroStrapline">${message("productdivider_strapline_" + language)}</div>
   

    <div class="productHolder">  <a class="leftarrow" href="javascript:void(0)" onclick="$('.heroineProducts').slickPrev();" ><a>
      <div class="heroineProducts">

        
     
      </div>
        <a class="rightarrow" href="javascript:void(0)" onclick="$('.heroineProducts').slickNext();"><a>
    </div>

      
  <div class="bodyDivider"><span class="whitebg">${message("slide1.title_" + language)}</span></div>
    <div class="cashrocketInstagramImages">


    </div>

 
  </div>


    <script>


var url = 'https://api.instagram.com/v1/users/self/media/liked?access_token=1651921409.e8c1f5d.a330d31be0134bfe9b50adbc91a47024'

//var url = 'https://api.instagram.com/v1/tags/snow/media/recent?access_token=1651921409.e8c1f5d.a330d31be0134bfe9b50adbc91a47024'


function LoadImages(){
    $.ajax({
      dataType:'jsonp',
      url:url,
      success:function(respondBack){
        return appendContent(respondBack);
      }
    });
  };

function showFurtherInformaion() {

  readLess = String("${message("slide1.readless_" + language)}")
  $('.furtherExplanation').fadeIn()
  $('.furtherExplanation').css({  height: "auto" });
  $(".contentslidereadmore").html("<a href=javascript:showLessInformaion()> "+ readLess+" <img class='ctaArrow' src='/alfresco/nap/webAssets/webPage/Heroine/arrow.gif' /></a>")
}

function showLessInformaion() {

  readMore = String("${message("slide1.readmore_" + language)}")
  $('.furtherExplanation').fadeOut()


  $(".contentslidereadmore").html("<a href=javascript:showFurtherInformaion()> "+  readMore +" <img class='ctaArrow' src='/alfresco/nap/webAssets/webPage/Heroine/arrow.gif' /></a>")
}


function appendContent(respondBack){
  n=0
  i=0
  if(respondBack != null){
    $(respondBack.data).each(function(index,obj){
      if(index == 20)
        return respondBack.pagination.next_url;
i++
n++
       if (n == 4) {n=1}
  

     //data="<div class='cashrocketImageRepeater"+n+"'><div class='cashrocketImageHoverBox' onmouseover='javascript:imageHover("+i+")' onmouseout='javascript:imageHoverOut("+i+")' id='hover"+i+"'> </div><div class='cashrocketInstaImageHolder"+n+"' id='image"+i+"' ><img src='" + obj.images.standard_resolution.url + "' width=100% height='auto'></div></div>"

      data="<div class='cashrocketImageRepeater"+n+"'><div class='cashrocketInstaImageHolder"+n+"' id='image"+i+"' ><img src='" + obj.images.standard_resolution.url + "' width=100% height='auto'></div></div>"

    $('.cashrocketInstagramImages').append(data);
    });

    url = respondBack.pagination.next_url;

  }
};


var nextLink = false;
var loadingImages = false;


function  loadMoreInstagram() {

    if (loadingImages || nextLink == url) {
      return false;
    }else{
  loadingImages = true;

  LoadImages();
  nextLink = url;

  loadingImages = false;
}
  
}


$(window).scroll(function() {
  var scrollto = 150; 
  if($(window).scrollTop() + $(window).height() > $(document).height() - scrollto) {
    loadMoreInstagram();
  }
});




function imageHover(imageID) {
  $('#image' + imageID + ' .cashrocketImagesCaption').animate({top: "209px"}, {
            duration: 'fast'
        })

  $('#hover' + imageID).fadeTo('fast', 0);

  $('.cashrocketInstagramImages').css('cursor','pointer');
}


function imageHoverOut(imageID) {
  $('#image' + imageID + ' .cashrocketImagesCaption').animate({top: "238px"}, {
            duration: 'fast'
        })

  $('#hover' + imageID).fadeTo('fast', 1);

  $('.cashrocketInstagramImages').css('cursor','auto');
}



Array.prototype.contains = function(k) {
    for(var p in this)
        if(this[p] === k)
            return true;
    return false;
}

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}

var wrapEveryN = function(n, elements, wrapper) {
   for (var i=0; i< elements.length; i+=n) {
       elements.slice(i,i+n).wrapAll(wrapper);
   }
}

function productHover(productID) {
  $('#product' + productID +' .heroineImageHolder').css('left', '-270px')
  $('#'+ productID +' .heroineProductTitle a').css('background-color', '#000000')
$('#'+ productID +' .heroineProductTitle a').css('color', '#ffffff')
  $('#product' + productID).css('cursor','pointer');

}

function productHoverOut(productID) {
  $('#product' + productID +' .heroineImageHolder').css('left', '-0px')
  $('#'+ productID +' .heroineProductTitle a').css('background-color', '#ffffff')
$('#'+ productID +' .heroineProductTitle a').css('color', '#000000')
  $('#product' + productID).css('cursor','pointer');
}

function loadProducts() {

soldout = String("${message("heroine_soldout_" + language)}")

if ($(window).width() > 767){



$.ajax({
      type: "GET",
        dataType: "xml",
        cache: false,
        url: "/Shop/List/Heroine_pieces?view=xml",
        success: function(data) {

           var i = 0
      $(data).find("product").each(function(){

          i = i+1
        
          if (i  > 9) {
            carouselTheProducts()
            return false;}


        
        altimage = $(this).attr("altImage").substr(0, 2);

        if (altimage == 'el') {altimage = 'l'}


        if ( $(this).attr("slugImage") != null){ 

          

          $(".heroineProducts").append("<div class='productCarouselItem'><div class='heroineProductRepeater' id='product"+ $(this).attr("id") +"''><div class='heroineProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")' id='product"+$(this).attr("id")+"' ><a class='heroineExlusive' href='/product/" + $(this).attr("id") + "'></a><div class='heroineImageHolder' ><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_ou_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='heroineProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='heroineProductDescription'>" + $(this).attr("title") + "</div><div class='heroineProductPrice'>" + $(this).attr("currentPrice") + "</div><span class='slug'>"+ soldout + "</span></div></div>")
            
  
        } else {


          
          $(".heroineProducts").append("<div class='productCarouselItem'><div class='heroineProductRepeater'><div class='heroineProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")'  id='product"+$(this).attr("id")+"' ><div class='heroineImageHolder'><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_ou_sl.jpg'/></a></div> </div><div id="+ $(this).attr("id") +"><div class='heroineProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='heroineProductDescription'>" + $(this).attr("title") + "</div><div class='heroineProductPrice'>" + $(this).attr("currentPrice") + "</div></div></div>")    
                };   

      }
        
                )  
    
    }
    });


}

if ($(window).width() < 768){

$.ajax({
      type: "GET",
        dataType: "xml",
        cache: false,
        url: "/Shop/List/Heroine_pieces?view=xml",
        success: function(data) {
            var i = 0
      $(data).find("product").each(function(){

         i = i+1
        
          if (i  > 9) {
            carouselTheProducts()
            return false;}

        
        altimage = $(this).attr("altImage").substr(0, 2);

        if (altimage == 'el') {altimage = 'l'}


        if ( $(this).attr("slugImage") != null){ 

          $(".heroineProducts").append("<div class='productCarouselItem'><div class='heroineProductRepeater' id='product"+ $(this).attr("id") +"''><div class='heroineProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")'  onclick='getHref(" + $(this).attr("id") + ")' id='product"+$(this).attr("id")+"' ><a class='heroineExlusive' href='/product/" + $(this).attr("id") + "'></a><div class='heroineImageHolder' ><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='heroineProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='heroineProductDescription'>" + $(this).attr("title") + "</div><div class='heroineProductPrice'>" + $(this).attr("currentPrice") + "</div><span class='slug'>"+ soldout + "</span></div></div>")
            
  
        } else {

          $(".heroineProducts").append("<div class='productCarouselItem'><div class='heroineProductRepeater'><div class='heroineProductImage' onmouseover='javascript:productHover("+$(this).attr("id")+")' onmouseout='javascript:productHoverOut("+$(this).attr("id")+")'  onclick='getHref(" + $(this).attr("id") + ")' id='product"+$(this).attr("id")+"' ><div class='heroineImageHolder'><a href='/product/" + $(this).attr("id") + "'><img src='http://www.net-a-porter.com/images/products/" + $(this).attr("id") + "/" + $(this).attr("id") + "_in_sl.jpg'/></a></div></div><div id="+ $(this).attr("id") +"><div class='heroineProductTitle'><a href='/product/" + $(this).attr("id") + "'>" + $(this).attr("manufacturer") + "</a></div></div><div class='heroineProductDescription'>" + $(this).attr("title") + "</div><div class='heroineProductPrice'>" + $(this).attr("currentPrice") + "</div></div></div>")    
                };   

      }
        
                )  
    
    }
    });

}
}



function setAspectRatios() {
   if ($(window).width() <768) {
    pushLeft = $(window).width() - 40
    $(".slidefade").css("left", pushLeft)
  }
}

$("#top-nav li").on('mouseenter',function(){
  $(".dropdownMenuBackground").fadeIn()
})

$("#top-nav ul").on('mouseleave',function(){
  $(".dropdownMenuBackground").fadeOut()
})

function getHref(product){  
  location.href="/product/" + product
}

function carouselTheProducts() {

    if ($(window).width() >768) {
  
    $(".heroineProducts").slick({
    dots:false,
    infinite: true,
    slidesToShow: 4,
    onAfterChange: function(e){
   
      if (e.currentSlide == 0) {
        //$(".leftarrow").fadeOut()
        //$(".rightarrow").fadeIn()
       
     
      if (e.currentSlide == 1) {
      // $(".leftarrow").fadeIn()
      // $(".rightarrow").fadeIn()
       
      }

      if (e.currentSlide == 2) {
       //$(".leftarrow").fadeIn()
       // $(".rightarrow").fadeOut()
       
      }
    }},
    responsive: [
    
    {
      breakpoint: 890,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 1,
        arrows: false
      }
    },
     {
      breakpoint: 500,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        arrows: false
      }
    }
  ]
  });
    }
}


var aspect_ratio = 0.5625
var holder_ratio = 0.9

function fixSocialMedia() {
  $("#social-media-bar").html("<div class='line'></div><ul id='social-media-links'><li class='facebook'><a href='https://www.facebook.com/netaporter' target='_blank'><span>NET-A-PORTER FACEBOOK</span></a></li><li class='twitter'><a href='https://twitter.com/#!/NETAPORTER' target='_blank'><span>NET-A-PORTER TWITTER</span></a></li><li class='pinterest'><a href='http://pinterest.com/netaporter/' target='_blank'><span>NET-A-PORTER PINTEREST</span></a></li><li class='tumblr'><a href='http://editors-photo-diary.net-a-porter.com/' target='_blank'><span>NET-A-PORTER TUMBLR</span></a></li><li class='googleplus'><a href='https://plus.google.com/115458014935766479911/posts' target='_blank'><span>NET-A-PORTER GOOGLE+</span></a></li><li class='youtube'><a href='http://www.youtube.com/netaporter' target='_blank'><span>NET-A-PORTER YOUTUBE</span></a></li></ul>")
}

jQuery(window).resize(function() {

  if ($(window).width() <768) {
    pushLeft = $(window).width() - 40
    $(".slidefade").css("left", pushLeft)
    $(".heroineProducts").unslick()
  }

});

$(document).ready(function(){

  fixSocialMedia()
  setAspectRatios();
  loadProducts();
  loadMoreInstagram();

   $(window).load(function() {
        if ($('.service-messages-extended').length < 1) {
    $("body").css('background-position', 'center 108px');
  } else  {
    $("body").css('background-position', 'center 144px');
  }
    });
  
});




    </script>
  </body>
</html> 