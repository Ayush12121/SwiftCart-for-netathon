<%@ page import="models.Users" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Add Tailwind CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
      integrity="sha512-KWahO8OxJxS0hSfhfj6E5V6XDEMQCn1V7J1PSy2skVzD5xI+95V7YxlZZoWgZAZ3q3f2AKcyHjs+WzEe1GjUIw=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&family=Roboto:wght@500;700&display=swap"
      rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://ompublicityjabalpur.com/css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
      integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
      crossorigin="anonymous"></script>

    <title>Swift Cart || Ecommerce website</title>
  </head>

  <body style="padding: 0;margin: 0;;">
    <!-- nav bar -->
    <nav class="flex items-center justify-between bg-white p-4 shadow-md">
      <a href="#" class="text-xl font-bold text-gray-800">Swift Cart</a>
      <ul class="flex">
        <li><a href="My-Cart" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;">Profile</a>
        </li>
        <li><a href="My-Orders" class="mx-4 text-gray-600 hover:text-gray-800"
            style="font-family: cursive;">My-Orders</a></li>
        <li><a href="" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;">AboutUS</a></li>
      </ul>
      <% Users user=(Users)session.getAttribute("user"); %>
        <% if(user !=null) { %>
          <div class="dropdown">
            <button class="btn bg-primary text-white dropdown-toggle mr-5" type="button" data-toggle="dropdown"
              aria-expanded="false">
              <%= user.getName() %>
            </button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Update Profile</a>
              <a class="dropdown-item" href="del.do">Delete Account</a>
              <a class="dropdown-item" href="logout.do">LogOut</a>
            </div>
          </div>

          <% } else { %>
            <button class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700 hover:text"><a
                href="login-outer.jsp">
                Sign In</a></button>
            <% } %>
    </nav>

    <!-- banner section -->
    <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="https://raw.githubusercontent.com/Ayush12121/images/main/5.png">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://raw.githubusercontent.com/Ayush12121/images/main/2.png"
            alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://raw.githubusercontent.com/Ayush12121/images/main/3.png"
            alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://raw.githubusercontent.com/Ayush12121/images/main/5.png
          " alt="Third slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="https://raw.githubusercontent.com/Ayush12121/images/main/4.png"
            alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- Banner Section -->
    <section class="bg-blue-100 py-12 px-4 mt-10">
      <div class="container mx-auto flex flex-wrap items-center">
        <div class="w-full md:w-1/2 mb-10">
          <h1 class="mb-4 text-4xl font-bold leading-tight" style="font-family: cursive;">Shop the Latest Collection
          </h1>
          <p class="mb-8 text-lg text-gray-700" style="font-family: cursive;">swift cart perfect place for buying less
            expensive and perfect shoes and
            watches</p>
          <a href="#" class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700 rounded-full"> Shop
            Now </a>
        </div>
        <div class="w-full md:w-1/2">
          <img
            src="https://images.unsplash.com/photo-1523170335258-f5ed11844a49?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80"
            alt="Product Image" class="mx-auto" />
        </div>
      </div>
    </section>

    <!-- cetegories -->

    <!-- Product List Section: Categories Grid -->
    <div
      style="display: flex;justify-content: center; align-items: baseline;margin-top: 10vh; margin-bottom: -5vh; font-size: 60px;font-family: cursive;">
      Cetegories
    </div>
    <div class="bg-white">
      <div class="container xl:max-w-7xl mx-auto px-4 py-16 lg:px-8 lg:py-32">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
          <a href="javascript:void(0)"
            class="sm:col-span-2 md:col-span-1 block group relative transition ease-out active:opacity-75 overflow-hidden">
            <img src="https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/51m71+3KhbL._UL1500_.jpg"
              alt="Product Image" class="transform transition ease-out group-hover:scale-110">
            <div class="absolute inset-0 bg-black bg-opacity-25 transition ease-out group-hover:bg-opacity-0"></div>
            <div class="p-4 flex items-center justify-center absolute inset-0">
              <div
                class="py-3 px-4 bg-white bg-opacity-95 rounded-3xl text-sm font-semibold uppercase tracking-wide transition ease-out group-hover:text-white group-hover:bg-blue-600">
                Sunglasses
              </div>
            </div>
          </a>
          <a href="javascript:void(0)"
            class="block group relative transition ease-out active:opacity-75 overflow-hidden">
            <img src="https://cdn.tailkit.com/media/placeholders/photo-164_6wVEHfI-700x700.jpg" alt="Product Image"
              class="transform transition ease-out group-hover:scale-110">
            <div class="absolute inset-0 bg-black bg-opacity-25 transition ease-out group-hover:bg-opacity-0"></div>
            <div class="p-4 flex items-center justify-center absolute inset-0">
              <div
                class="py-3 px-4 bg-white bg-opacity-95 rounded-3xl text-sm font-semibold uppercase tracking-wide transition ease-out group-hover:text-white group-hover:bg-blue-600">
                Shoes
              </div>
            </div>
          </a>
          <a href="javascript:void(0)"
            class="block group relative transition ease-out active:opacity-75 overflow-hidden">
            <img src="https://cdn.tailkit.com/media/placeholders/photo-wW7XbWYoqK8-700x700.jpg" alt="Product Image"
              class="transform transition ease-out group-hover:scale-110">
            <div class="absolute inset-0 bg-black bg-opacity-25 transition ease-out group-hover:bg-opacity-0"></div>
            <div class="p-4 flex items-center justify-center absolute inset-0">
              <div
                class="py-3 px-4 bg-white bg-opacity-95 rounded-3xl text-sm font-semibold uppercase tracking-wide transition ease-out group-hover:text-white group-hover:bg-blue-600">
                Watches
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
    <!-- END Product List Section: Categories Grid -->
    <!-- Divider: With Heading -->
    <!-- <h3 class="flex items-center my-8 ">
  <span aria-hidden="true" class="grow bg-gray-200 rounded h-0.5"></span>
  <span class="text-lg font-medium mx-3"></span>
  <span aria-hidden="true" class="grow bg-gray-200 rounded h-0.5"></span>
</h3> -->
    <!-- END Divider: With Heading -->

    <!-- end of cetegories -->

    <!-- Featured Products Section - A -->
    <section class="py-12 px-4">
      <div class="container mx-auto">
        <h2 class="mb-4 text-4xl font-bold leading-tight">Popular Products</h2>
        <div class="-mx-4 flex flex-wrap">
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img
                src="https://cdn.shopify.com/s/files/1/0607/6678/1671/products/FIRST_11G-787_BLK-MATTLIC.BLU.jpg?v=1670326503/800x600"
                alt="Product Image" class="w-full"  />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Running Shoes</h3>
                <p class="text-gray-700">1200 INR</p>
                <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</button>
              </div>
            </div>
          </div>
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img
                src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"
                alt="Product Image" class="w-full"  />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</button>
              </div>
            </div>
          </div>

          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img src="https://rukminim1.flixcart.com/image/612/612/kxrvi4w0/shoe/d/e/6/11-m490nn6-11-5-new-balance-pigment-gunmetal-original-imaga5zf7tebwhwb.jpeg?q=70" alt="Product Image" class="w-full" />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</button>
              </div>
            </div>
          </div>
          <div class="mb-8 w-full px-4 md:w-1/4">
            <div class="overflow-hidden rounded-lg bg-white shadow-md">
              <img src="https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80" alt="Product Image" class="w-full" />
              <div class="p-4">
                <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                <p class="text-gray-700">$99.00</p>
                <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                  Cart</button>
              </div>
            </div>
          </div>
        </div>
      </div>



      <!-- Section B -->

      <section class="py-12 px-4">
        <div class="container mx-auto">
          <h2 class="mb-4 text-4xl font-bold leading-tight">Shoes</h2>
          <div class="-mx-4 flex flex-wrap">
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://images.unsplash.com/photo-1543508282-6319a3e2621f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://images.unsplash.com/photo-1562183241-b937e95585b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://images.unsplash.com/photo-1605348532760-6753d2c43329?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
            <div class="mb-8 w-full px-4 md:w-1/4">
              <div class="overflow-hidden rounded-lg bg-white shadow-md">
                <img src="https://images.unsplash.com/photo-1600269452121-4f2416e55c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1965&q=80" alt="Product Image" class="w-full" />
                <div class="p-4">
                  <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                  <p class="text-gray-700">$99.00</p>
                  <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                    Cart</button>
                </div>
              </div>
            </div>
          </div>
        </div>





        <section class="py-12 px-4">
          <div class="container mx-auto">
            <h2 class="mb-4 text-4xl font-bold leading-tight">Watches</h2>
            <div class="-mx-4 flex flex-wrap">
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://images.unsplash.com/photo-1594576722512-582bcd46fba3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>

              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://images.unsplash.com/photo-1614164185128-e4ec99c436d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>

              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://images.unsplash.com/photo-1611353229530-f17036b8479a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>
              <div class="mb-8 w-full px-4 md:w-1/4">
                <div class="overflow-hidden rounded-lg bg-white shadow-md">
                  <img src="https://images.unsplash.com/photo-1612042850052-22573fcd0bad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80" alt="Product Image" class="w-full" />
                  <div class="p-4">
                    <h3 class="mb-2 text-2xl font-bold">Product Name</h3>
                    <p class="text-gray-700">$99.00</p>
                    <button class="mt-4 rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700">Add to
                      Cart</button>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- get in touch section -->
          <form action="https://formsubmit.co/amansinghas5795647@gmail.com" method="post">
            <div class="container-xxl py-5">
              <div class="container">
                <div class="row g-5">
                  <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <p class="fs-5 fw-medium text-primary">Stay connected</p>
                    <h1 class="display-5 mb-4">Contact US for more information</h1>
                    <p>Om publicity will make Retro Reflective Board, Flex Board, Glow Sign Board, Acrylic Letters, ACP
                      Sgn Board, LED Signage, Banner Stands, 3D Letter Boards, etc in reasonable cost and in Minimum
                      Time with Full Finish.</p>
                    <a class="d-inline-flex align-items-center rounded overflow-hidden border border-primary"
                      href="javascript:void(0)">
                      <span class="btn-lg-square bg-primary" style="width: 55px; height: 55px;">
                        <i class="fa fa-phone-alt text-white"></i>
                      </span>
                      <span class="fs-5 fw-medium mx-4">+91 7000153525</span>
                    </a>
                  </div>

                  <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <h2 class="mb-4">Contact Now</h2>
                    <input type="hidden" name="_subject" value="Swift Cart Enquiery mail">
                    <input type="hidden" name="_captcha" value="false">
                    <div class="row g-3">
                      <div class="col-sm-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" name="name" id="name" placeholder="Your Name"
                            required>
                          <label for="name"></label>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-floating">
                          <input type="email" class="form-control" name="email" id="mail" placeholder="Your Email"
                            required>
                          <label for="mail"></label>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-floating">
                          <input type="text" class="form-control" name="phone" id="mobile" placeholder="Your Mobile"
                            required>
                          <label for="mobile"></label>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="form-floating">
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-floating">
                          <textarea class="form-control" placeholder="Leave a message here" name="message" id="message"
                            style="height: 130px"></textarea>
                          <label for="message"></label>
                        </div>
                      </div>
                      <div class="col-12 text-center">
                        <button class="btn btn-primary w-100 py-3 text-white" type="submit">Submit Now</button>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </form>

          <!-- footer starts   -->

          <div>
            <div class="bg-gray-700 p-3 space-y-10 md:grid grid-cols-2 md:-mt-6 lg:grid-cols-4"
              style=" width: 110.5%;margin-left: -4.8vw; margin-bottom: -3vh;">
              <div class="w-1/2 md:ml-24 md:mt-9 md:w-3/4">
                <h1 class="text-orange-400 text-xl font-medium">Company</h1> <br />
                <p class="text-gray-300/80 text-base hover:text-yellow-300 cursor-none"> A123 Lost Street <br />
                  Chandigarh,
                  PB 535022 <br /> India </p> <br />
                <p class="text-gray-200/80 text-base hover:text-yellow-300 cursor-pointer"> <strong
                    class="tracking-wide text-orange-400 font-normal">Phone:</strong> +91 7008090111 </p>
                <p class="text-gray-200/80 text-base hover:text-yellow-300 cursor-pointer"> <strong
                    class="tracking-wide text-orange-400 font-normal">Email:</strong> info@gmail.com </p>
              </div>
              <div class="leading-9 md:w-2/4 md:order-3 md:ml-24">
                <h1 class="text-orange-400 text-xl font-medium tracking-[0.030rem]"> Useful Links</h1>
                <ul class="mt-2 text-gray-300/80">
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      Home</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      About Us</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      Products</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      Terms of service</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      Privacy policy</a> </li>
                </ul>
              </div>
              <div class="leading-9 md:w-3/4 md:order-4">
                <h1 class="text-orange-400 text-xl font-medium tracking-[0.030rem]"> Our Products </h1>
                <ul class="mt-2 text-gray-300/80">
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      watches</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                      shoes</a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                    </a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                    </a> </li>
                  <li> <i class="fa fa-chevron-right text-orange-400"></i> <a href="#" class="hover:text-yellow-300">
                    </a> </li>
                </ul>
              </div>
              <div class="md:order-2 lg:order-last">
                <h1 class="text-orange-400 text-xl font-medium tracking-[0.030rem]"> Join Our Newsletter </h1> <br />
                <p class="text-gray-300/80 w-3/5 leading-7 mb-5 md:w-3/4"> Join us now for more future updated before
                  everyone. </p> <input type="email" placeholder="Enter E-mail Here"
                  class="py-1 px-2 placeholder-gray-400 rounded-tl-xl focus: outline-none focus:border border-orange-600 md:w-1/2 lg:w-3/5" />
                <button class="text-white bg-orange-400 p-1 -translate-x-1 rounded-br-xl hover:bg-orange-500"> Subscribe
                </button>
              </div>
            </div>
            <div
              class="bg-gray-900 flex flex-col text-center pt-5 space-y-8 md:flex-row md:justify-between md:space-y-0"
              style="width: 110.5%; margin-left: -4.8vw; margin-bottom: -25vh;height:10px;">
            </div>
            <script src="https://use.fontawesome.com/03f8a0ebd4.js"></script>
            <script src="https://cdn.tailwindcss.com"></script>


  </body>

  </html>