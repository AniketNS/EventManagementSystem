<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="bg-gray-100 mt-16 mb-16">
  <section id="login" class="py-8 px-6">
    <div class="container mx-auto">
      <h2 class="text-3xl font-bold text-center mb-6">Login</h2>
      <form class="max-w-lg mx-auto border border-gray-300 shadow-md rounded-lg p-8" method="post" action="login.jsp">
        <div class="mb-4">
          <label for="email" class="block text-gray-700 font-bold mb-2">Email Address</label>
          <input type="email" name="email" id="email" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
        </div>
        <div class="mb-4">
          <label for="password" class="block text-gray-700 font-bold mb-2">Password</label>
          <input type="password" name="password" id="password" class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" required>
        </div>
        <div class="flex justify-center items-center mt-6">
          <button type="submit" class="bg-gray-800 text-white hover:bg-white hover:text-black font-bold py-2 px-4 rounded"><a href="admin/">Login</a></button>
        </div>
        <div class="text-center mt-4">
          <span class="text-gray-600">Don't have an account? </span>
          <a href="index.jsp?page=register" class="text-blue-500 hover:text-blue-700 font-bold">Register</a>
        </div>
      </form>
    </div>
  </section>
</main>