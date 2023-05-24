<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="bg-gray-50 mt-16 mb-16">
  <div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-4">Contact Us</h1>
    <section>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="name">Your Name</label>
        <input class="shadow appearance-none border rounded-sm w-2/5 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="name" type="text" placeholder="Your Name">
      </div>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="name">Your Email</label>
        <input class="shadow appearance-none border rounded-sm w-2/5 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="email" type="text" placeholder="Your Email">
      </div>
      <div class="mb-4">
        <label class="block text-gray-700 text-sm font-bold mb-2" for="query">Query</label>
        <textarea class="shadow appearance-none border rounded h-32 w-2/3 py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="query" placeholder="Enter your query or information"></textarea>
      </div>
      <button class="mt-2 px-4 py-2 bg-red-500 hover:bg-red-600 text-white font-semibold rounded" onclick="clearTextArea()">Clear</button>
      <button class="px-4 py-2 bg-blue-500 hover:bg-blue-600 text-white font-semibold rounded" type="submit">Contact</button>
    </section>
  </div>
</main>

<script>
  function clearTextArea() {
    document.getElementById("query").value = "";
  }
</script>
