<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<main class="bg-gray-100 mt-16 mb-16">
   <section id="register" class="py-8 px-6">
      <div class="container mx-auto">
         <h2 class="text-3xl font-bold text-center mb-6">Register</h2>
         <%
            String error = request.getParameter("error");
            %>
         <%
            if (error != null) {
            %>
         <div class="bg-red-500 text-white p-4 mb-4 rounded">
            <%
               if (error.equals("1")) {
               %>
            <p>Registration failed. Please try again.</p>
            <%
               } else if (error.equals("2")) {
               %>
            <p>Passwords do not match. Please try again.</p>
            <%
               }
               %>
         </div>
         <%
            }
            %>
         <%
            String success = request.getParameter("success");
            %>
         <%
            if (success != null) {
            %>
         <div class="bg-green-500 text-white p-4 mb-4 rounded">
            <%
               if (success.equals("1")) {
               %>
            <p>Registration successful. Please log in.</p>
            <%
               }
               %>
         </div>
         <%
            }
            %>
         <form class="max-w-lg mx-auto border border-gray-300 rounded-lg p-8 shadow-md"
            method="post" action="${pageContext.request.contextPath}/register">
            <div class="mb-4">
               <label for="name" class="block text-gray-700 font-bold mb-2">Full Name</label> 
               <input type="text" name="name" id="name"
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  required>
            </div>
            <div class="mb-4">
               <label for="email" class="block text-gray-700 font-bold mb-2">Email Address</label> 
               <input type="email" name="email" id="email"
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  required>
            </div>
            <div class="mb-4">
               <label for="phone" class="block text-gray-700 font-bold mb-2">Phone
               Number</label> <input type="tel" name="phone" id="phone"
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  required>
            </div>
            <div class="mb-4">
               <label for="password" class="block text-gray-700 font-bold mb-2">Password</label>
               <input type="password" name="password" id="password"
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  required>
            </div>
            <div class="mb-4">
               <label for="confirm_password"
                  class="block text-gray-700 font-bold mb-2">Confirm
               Password</label> <input type="password" name="confirm_password"
                  id="confirm_password"
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  required>
            </div>
            <div class="mb-4">
               <label for="role" class="block text-gray-700 font-bold mb-2">Role</label>
               <select name="role" id="role"
                  class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                  required>
                  <option value="">Select Role</option>
                  <option value="Admin">Admin</option>
                  <option value="Organizer"> Organizer</option>
                  <option value="Participant">Participant</option>
               </select>
            </div>
            <div class="flex justify-center mt-6">
               <button type="submit"
                  class="bg-gray-800 text-white hover:bg-white hover:text-black font-bold py-2 px-4 rounded">Register
               Now</button>
            </div>
            <div class="text-center mt-4">
               <span class="text-gray-600">Already have an account? </span> <a
                  href="index.jsp?page=login"
                  class="text-blue-500500 hover:text-blue-800">Log In</a>
            </div>
         </form>
      </div>
   </section>
</main>