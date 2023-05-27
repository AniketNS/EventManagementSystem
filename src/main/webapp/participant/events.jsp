<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="container mx-auto px-8 py-4">
  <h1 class="text-3xl font-bold mb-4">Ongoing Events</h1>

  <!-- Event cards -->
  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
    <!-- Example event card -->
    <div class="bg-white shadow-md rounded-lg p-6 h-60">
      <h2 class="text-lg font-bold mb-2">Event 1</h2>
      <p class="text-gray-700 mb-4">Event description goes here.</p>
      <div class="flex justify-between">
        <p class="text-gray-700">Date: May 15, 2023</p>
        <p class="text-green-600 font-semibold">$50</p>
      </div>
      <a href="transaction.jsp?eventId=1" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded mt-4 inline-block">Register Here</a>
    </div>

    <div class="bg-white shadow-md rounded-lg p-6 h-60">
      <h2 class="text-lg font-bold mb-2">Event 2</h2>
      <p class="text-gray-700 mb-4">Event description goes here.</p>
      <div class="flex justify-between">
        <p class="text-gray-700">Date: May 16, 2023</p>
        <p class="text-green-600 font-semibold">$50</p>
      </div>
      <a href="transaction.jsp?eventId=2" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded mt-4 inline-block">Register Here</a>
    </div>

    <div class="bg-white shadow-md rounded-lg p-6 h-60">
      <h2 class="text-lg font-bold mb-2">Event 3</h2>
      <p class="text-gray-700 mb-4">Event description goes here.</p>
      <div class="flex justify-between">
        <p class="text-gray-700">Date: May 17, 2023</p>
        <p class="text-green-600 font-semibold">$50</p>
      </div>
      <a href="transaction.jsp?eventId=3" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded mt-4 inline-block">Register Here</a>
    </div>

    <!-- Add more event cards as needed -->
  </div>
</main>
