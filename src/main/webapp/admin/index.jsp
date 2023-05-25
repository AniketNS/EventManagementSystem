<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Dashboard</title>
      <link
         href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.15/dist/tailwind.min.css"
         rel="stylesheet">
   </head>
   <body class="bg-gray-100">
<nav class="bg-white shadow-md fixed top-0 w-full">
   <div class="container mx-auto px-6 py-2">
      <div class="flex items-center justify-between">
         <div>
            <a href="index.jsp" class="text-gray-800 text-xl font-bold">Eventify</a>
         </div>
         <div x-data="{ open: false }" class="relative inline-block">
        <div class="flex items-center border border-gray-200 rounded-lg shadow-md bg-white cursor-pointer" @click="open = !open">
            <!-- Replace 'profile-logo.png' with the path to your profile logo image -->
            <img src="profile-logo.png" alt="Profile Logo" class="w-10 h-10 rounded-full mx-2">
            <span class="text-gray-700 font-semibold mr-2">Username</span>
        </div>
        
        <div x-show="open" @click.away="open = false" class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg py-1">
            <a href="index.jsp?page=profile" class="block px-4 py-2 text-gray-700 hover:bg-gray-100">Profile</a>
            <a href="#" class="block px-4 py-2 text-gray-700 hover:bg-gray-100">Logout</a>
        </div>
    </div>
         
      </div>
   </div>
</nav>
<div class="pt-16">
   <div class="flex pl-4">
      <div class="overflow-y-hidden">
         <div class="flex flex-col w-64 bg-white shadow-lg pt-1 max-h-[calc(100vh-64px-64px)] mb-16">
            <!-- Sidebar content -->
            <a href="index.jsp?page=dashboard"
               class="flex items-center justify-start py-4 px-6 bg-gray-200 text-gray-700 hover:bg-gray-300">
               <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2"
                  fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round"
                     stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
               </svg>
               Dashboard
            </a>
            <a href="index.jsp?page=users"
               class="flex items-center justify-start py-4 px-6 text-gray-700 hover:bg-gray-200">
               <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2"
                  fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round"
                     stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
               </svg>
               Users
            </a>
            <a href="index.jsp?page=events"
               class="flex items-center justify-start py-4 px-6 bg-gray-200 text-gray-700 hover:bg-gray-300">
               <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2"
                  fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round"
                     stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
               </svg>
               Events
            </a>
            <a href="index.jsp?page=participants"
               class="flex items-center justify-start py-4 px-6 text-gray-700 hover:bg-gray-200">
               <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2"
                  fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round"
                     stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
               </svg>
               Participants
            </a>
            <a href="index.jsp?page=transactions"
               class="flex items-center justify-start py-4 px-6 bg-gray-200 text-gray-700 hover:bg-gray-300">
               <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mr-2"
                  fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round"
                     stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
               </svg>
               Transactions
            </a>
         </div>
      </div>
      <div class="flex-grow pl-4 pr-4">
         <div id="content">
            <% String currentPage = request.getParameter("page"); %>
            <% if (currentPage == null) {
               currentPage = "dashboard";
            } %>
            <jsp:include page='<%= currentPage + ".jsp" %>' />
         </div>
      </div>
   </div>
</div>
      <footer class="bg-white shadow-md mt-16 fixed bottom-0 w-full ">
         <div class="container mx-auto px-6 py-4">
            <div class="flex justify-between items-center">
               <div>
                  <p class="text-gray-800 text-sm">&copy; 2023 Eventify. All rights reserved.</p>
               </div>
               <div>
                  <ul class="flex items-center space-x-4">
                     <li><a href="#" class="text-gray-500 hover:text-gray-800">Privacy Policy</a></li>
                     <li><a href="#" class="text-gray-500 hover:text-gray-800">Terms of Service</a></li>
                     <li><a href="#" class="text-gray-500 hover:text-gray-800">Contact</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </footer>
      
       <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    <script>
        document.addEventListener('alpine:init', () => {
            Alpine.data('dropdown', () => ({
                open: false,
            }));
        });
    </script>
   </body>
</html>