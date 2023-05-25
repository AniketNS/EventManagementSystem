<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eventify</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.16/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
	<nav class="bg-white shadow-md fixed top-0 w-full">
        <div class="container mx-auto px-6 py-2">
            <div class="flex items-center justify-between">
                <div>
                    <a href="index.jsp" class="text-gray-800 text-xl font-bold">Eventify</a>
                </div>
                <div>
                    <ul class="flex items-center space-x-4">
                        <li><a href="index.jsp" class="text-gray-500 hover:text-gray-800">Home</a></li>
                        <li><a href="index.jsp?page=about" class="text-gray-500 hover:text-gray-800">About</a></li>
                        <li><a href="index.jsp?page=contact" class="text-gray-500 hover:text-gray-800">Contact</a></li>
                        <li><a href="index.jsp?page=register" class="text-gray-500 hover:text-gray-800">Register</a></li>
                        <li><a href="index.jsp?page=login" class="text-gray-500 hover:text-gray-800">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
	<div id="content">
	    <% String currentPage = request.getParameter("page"); %>
	    <% if (currentPage == null) {
	        currentPage = "default";
	    } %>
	    <jsp:include page='<%= currentPage + ".jsp" %>' />
	</div>
	<footer class="bg-white shadow-md mt-8 fixed bottom-0 w-full">
	    <div class="container mx-auto px-6 py-4">
	        <div class="flex justify-between items-center">
	            <div>
	                <p class="text-gray-800 text-sm">&copy; 2023 Eventify. All rights reserved.</p>
	            </div>
	            <div>
	                <ul class="flex items-center space-x-4">
	                    <li><a href="#" class="text-gray-500 hover:text-gray-800">Privacy Policy</a></li>
	                    <li><a href="#" class="text-gray-500 hover:text-gray-800">Terms &amp; Conditions</a></li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</footer>
	
</body>
</html>