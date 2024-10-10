@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600&display=swap');

*{
   font-family: 'Montserrat', sans-serif;
   margin:0; padding:0;
   box-sizing: border-box;
   outline: none; border:none;
   text-decoration: none;
   transition: all .2s linear;
}

$blue:#2597f4;
$white:#fff;
$black:#334;
$light-color:#777;
$light-bg:#f5f5f5;
$border:.2rem solid $black;
$box-shadow:0 .5rem 1rem rgba(0,0,0,.1);

@mixin grid($val) {
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax($val, 1fr));
   gap:2rem;
}

@mixin titleText($titleSize) {
   font-size: $titleSize;
   text-transform: capitalize;
   color:$black;
}

@mixin graphText($graphSize) {
   font-size: $graphSize;
   line-height: 2;
   color:$light-color;
}

html{
   font-size: 62.5%;
   overflow-x: hidden;
   scroll-behavior: smooth;
   scroll-padding-top: 6rem;

   &::-webkit-scrollbar{
      width: 1rem;
   }

   &::-webkit-scrollbar-track{
      background: $white;
   }

   &::-webkit-scrollbar-thumb{
      background: $blue;
      border-radius: 5rem;
   }
}

section{
   padding:5rem 10%;
}

.heading{
   text-align: center;
   margin-bottom: 3rem;
   @include titleText(4rem);

   span{
      color:$blue;
   }
}

.btn{
   display: inline-block;
   margin-top: 1rem;
   padding:1rem 3rem;
   cursor: pointer;
   background: $white;
   @include titleText(1.7rem);
   border:$border;

   &:hover{
      background: $blue;
      border-color: $blue;
      color:$white;
   }
}

.header{

   .contact-info{
      padding:2rem 10%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      background: $blue;

      p{
         font-size: 1.5rem;
         color:$white;

         i{
            padding-right: .5rem;
            color:yellow;
         }
      }
   }

   .navbar{
      padding:2rem 10%;
      display: flex;
      align-items: center;
      justify-content: space-between;
      background: $white;
      border-bottom: $border;
      position: relative;
      z-index: 1000;

      &.active{
         position: fixed;
         top:0; left:0; right:0;
         border-bottom: none;
         box-shadow: $box-shadow;
      }

      .logo{
         @include titleText(2.5rem);
         font-weight: bolder;

         i{
            color:$blue;
         }
      }

      .links{

         a{
            margin-left: 2rem;
            @include titleText(2rem);

            &:hover{
               text-decoration: underline;
               color:$blue;
            }
         }
      }
   }

   #menu-btn{
      font-size: 3rem;
      cursor: pointer;
      color:$black;
      display: none;
   }
}

.home{
   display: flex;
   align-items: center;
   flex-wrap: wrap;
   gap:3rem;

   .image{
      flex:1 1 42rem;

      img{
         width: 100%;
      }
   }

   .content{
      flex:1 1 42rem;

      h3{
         @include titleText(4.5rem);
      }

      p{
         @include graphText(1.5rem);
         padding:1rem 0;
      }
   }
}

.fun-fact{
   @include grid(25rem);
   background: $light-bg;
   gap:3.5rem;

   .box{
      display: flex;
      align-items: center;
      gap:2rem;

      img{
         height: 10rem;
      }

      h3{
         @include titleText(4rem);
      }

      p{
         @include graphText(1.5rem);
         padding-top: .5rem;
      }
   }
}

.about{
   display: flex;
   align-items: center;
   flex-wrap: wrap-reverse;
   gap:3rem;

   .image{
      flex:1 1 42rem;

      img{
         width: 100%;
      }
   }

   .content{
      flex:1 1 42rem;

      h3{
         @include titleText(3rem);
         padding-bottom: .5rem;
      }

      p{
         @include graphText(1.5rem);
         padding:1rem 0;
      }
   }
}

.services{
   background: $light-bg;

   .box-container{
      @include grid(30rem);

      .box{
         text-align: center;
         background: $white;
         border:$border;
         box-shadow: $box-shadow;
         padding:3rem 2rem;

         &:hover{
            background: $black;

            h3{
               color: $white;
            }

            p{
               color:$white;
            }
         }

         img{
            height: 7rem;
            margin-bottom: .5rem;
         }

         h3{
            @include titleText(2rem);
            padding:1rem 0;
         }

         p{
            @include graphText(1.5rem);
         }
      }
   }
}

.gallery{

   .gallery-container{
      @include grid(30rem);

      .box{
         height: 25rem;
         overflow:hidden;

         &:hover img{
            transform: scale(1.1);
         }

         img{
            height: 100%;
            width: 100%;
            object-fit: cover;
         }
      }
   }
}

.facilities{
   background: $light-bg;

   .box-container{
      @include grid(30rem);

      .box{
         background: $white;
         padding:3rem;
         text-align: center;
         border:$border;
         box-shadow: $box-shadow;

         &:hover{
            background: $black;

            h3{
               color:$white;
            }

            p{
               color:$white;
            }
         }

         img{
            height: 10rem;
            margin-bottom: .5rem;
         }

         h3{
            padding:1rem 0;
            @include titleText(2rem);
         }

         p{
            @include graphText(1.4rem);
         }
      }
   }
}

.team{

   .box-container{
      @include grid(25rem);
      align-items: flex-start;

      .box{
         overflow:hidden;
         text-align: center;

         &:hover{
            .content{
               margin-bottom: 0;
            }
         }

         img{
            width: 100%;
         }

         .content{
            padding:2rem;
            margin-bottom: -7rem;

            h3{
               @include titleText(2rem);
            }

            p{
               @include graphText(1.4rem);
               padding:.5rem 0;
            }

            .share{
               margin-top: 1.5rem;

               a{
                  height: 4.5rem;
                  width: 4.5rem;
                  line-height: 4.5rem;
                  font-size: 1.7rem;
                  margin:0 .3rem;
                  background: $black;
                  color: $white;

                  &:hover{
                     background: $blue;
                  }
               }
            }
         }
      }
   }
}

.reviews{
   background: $light-bg;

   .box-container{
      @include grid(30rem);

      .box{
         text-align: center;
         padding:3rem;
         background: $white;
         box-shadow: $box-shadow;
         border:$border;

         &:hover{
            background: $black;

            .text p{
               color:$white;
            }

            .user h3{
               color:$white;
            }
         }

         .star{

            i{
               color:$blue;
               font-size: 1.7rem;
            }
         }

         .text{
            position: relative;
            z-index: 0;
            padding:1.5rem 0;

            i{
               font-size: 7rem;
               position: absolute;
               top:50%; left:50%;
               transform: translate(-50%, -50%);
               z-index: -1;
               opacity: .3;
               color:$blue;
            }

            p{
               @include graphText(1.5rem);
            }
         }

         .user{

            img{
               height: 7rem;
               width: 7rem;
               border-radius: 50%;
               margin-bottom: .5rem;
            }

            h3{
               @include titleText(1.7rem);
            }
         }
      }
   }
}

.contact{

   .row{
      display: flex;
      flex-wrap: wrap;
      gap:3rem;

      .map{
         flex:1 1 42rem;
         width: 100%;
      }

      form{
         flex:1 1 42rem;
         padding:2rem;
         border:$border;

         h3{
            @include titleText(2.5rem);
            padding-bottom: 1rem;
         }

         .inputBox{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;

            input{
               width: 49%;
            }
         }

         .inputBox input, textarea{
            padding:1.2rem 1.4rem;
            font-size: 1.6rem;
            color:$light-color;
            margin:.7rem 0;
            border:$border;

            &:focus{
               background: $black;
               color:$white;

               &::placeholder{
                  color:$white;
               }
            }
         }

         textarea{
            width: 100%;
            height: 15rem;
            resize: none;
         }
      }
   }
}


.footer{
   background: $light-bg;

   .box-container{
      @include grid(25rem);

      .box{

         h3{
            @include titleText(2.2rem);
            padding:1rem 0;
         }

         .link{
            display: block;
            padding:.5rem 0;
            @include graphText(1.5rem);

            i{
               padding-right: .5rem;
               color:$blue;
            }

            &:hover{
               color:$blue;

               i{
                  padding-right: 2rem;
               }
            }
         }

         p{
            padding:.5rem 0;
            @include graphText(1.5rem);

            span{
               color:$blue;
            }
         }

         .email{
            width: 100%;
            border:$border;
            padding:1.6rem 1.4rem;
            font-size: 1.6rem;
            color:$light-color;
            margin:1rem 0;
         }

         .share{
            margin-top: 2rem;

            a{
               height: 4.5rem;
               width: 4.5rem;
               line-height: 4.5rem;
               font-size: 1.7rem;
               background: $black;
               color:$white;
               margin-right: .3rem;
               text-align: center;

               &:hover{
                  background: $blue;
               }
            }
         }
      }
   }

   .credit{
      @include titleText(2rem);
      margin-top: 3rem;
      padding-top: 3rem;
      border-top: $border;
      text-align: center;

      span{
         color:$blue;
      }
   }
}











// media queries 

@media (max-width:1200px){

   .header{

      .contact-info{
         padding:2rem 5%;
      }

      .navbar{
         padding:2rem 5%;
      }
   }

   
   section{
      padding:3rem 5%;
   }

}

@media (max-width:991px){

   html{
      font-size: 55%;
   }

   .header{

      .contact-info{
         padding:2rem;
      }

      .navbar{
         padding:2rem;
      }
   }

   section{
      padding:3rem 2rem;
   }

}

@media (max-width:768px){

   .header{

      .contact-info{
         display: none;
      }

      #menu-btn{
         display: inline-block;

         &.fa-times{
            transform: rotate(180deg);
         }
      }

      .navbar{

         .links{
            position: absolute;
            top:99%; left:0; right:0;
            background: $white;
            border-top: $border;
            border-bottom: $border;
            clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);

            &.active{
               clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
            }

            a{
               display: block;
               margin:2.5rem 2rem;
               font-size: 2.5rem;
            }
         }
      }
   }

   .fun-fact{
      padding:5rem 2rem;

      .box{
         flex-flow: column;
         text-align: center;
      }
   }
}

@media (max-width:450px){

   html{
      font-size: 50%;
   }

   .home .content h3{
      font-size: 3rem;
   }

   .contact .row form .inputBox input{
      width: 100%;
   }

   .heading{
      font-size: 3rem;
   }
}