<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Organizer Dashboard</title>
  <!-- Include Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body>
  <!-- Static navbar -->
  <nav class="navbar bg-gray-800 text-white py-4 flex justify-between items-center">
    <div>
      <span class="text-lg font-bold mr-2 ml-4">Eventify</span>
    </div>
    <div class="flex items-center mr-4">
      <ul class="flex">
        <li class="relative">
          <button id="profileButton" class="flex items-center text-gray-300 hover:text-white focus:outline-none">
            <img src="profile-photo.jpg" alt="Profile Photo" class="w-8 h-8 rounded-full mr-2">
            <span>John Doe</span>
          </button>
          <div id="profileMenu" class="absolute hidden bg-white mt-2 py-2 rounded-lg shadow-lg right-0">
            <a href="#" class="block px-4 py-2 text-gray-800 hover:bg-gray-300">Profile</a>
            <a href="#" class="block px-4 py-2 text-gray-800 hover:bg-gray-300">Logout</a>
          </div>
        </li>
      </ul>
    </div>
  </nav>
  
  <!-- Main content area -->
  <div class="flex">
    <!-- Static sidebar -->
    <aside class="sidebar bg-gray-200 h-screen w-64 py-4">
  <!-- Sidebar content -->
  <ul class="sidebar-menu">
    <li>
      <a href="organiserDashboard.jsp" class="block px-4 py-2 text-gray-800 hover:bg-gray-300 rounded-md shadow-sm">Dashboard</a>
    </li>
    <li>
      <a href="organiserDashboard.jsp?page=createEvent" class="block px-4 py-2 text-gray-800 hover:bg-gray-300 rounded-md shadow-sm">Create Event</a>
    </li>
    <li>
      <a href="organiserDashboard.jsp?page=billing" class="block px-4 py-2 text-gray-800 hover:bg-gray-300 rounded-md shadow-sm">Billing</a>
    </li>
  </ul>
</aside>

    
    <!-- Dynamic content -->
    <div class="flex-1">
      <% String currentPage = request.getParameter("page"); %>
      <% if (currentPage == null) {
        currentPage = "dashboard";
      } %>
      <jsp:include page='<%= currentPage + ".jsp" %>' />
    </div>
  </div>
  
  <!-- Include your JavaScript files if needed -->
  <script>
    document.getElementById('profileButton').addEventListener('click', function() {
      var profileMenu = document.getElementById('profileMenu');
      profileMenu.classList.toggle('hidden');
    });
  </script>
</body>

</html>
