<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main-content flex-1">
  <div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-4">Billing</h1>

    <!-- Earnings summary -->
    <div class="bg-white shadow-md p-6 rounded-lg mb-8">
      <h2 class="text-lg font-bold mb-4">Earnings Summary</h2>

      <div class="flex flex-wrap justify-between">
        <div class="w-full md:w-1/2 lg:w-1/3 mb-4">
          <p class="text-gray-700 mb-1 text-lg">Event 1</p>
          <p class="text-green-600 font-semibold text-2xl">$500</p>
        </div>

        <div class="w-full md:w-1/2 lg:w-1/3 mb-4">
          <p class="text-gray-700 mb-1 text-lg">Event 2</p>
          <p class="text-green-600 font-semibold text-2xl">$800</p>
        </div>

        <!-- Add more event earnings as needed -->
      </div>
    </div>

    <!-- Current event earnings -->
    <div class="bg-white shadow-md p-6 rounded-lg">
      <h2 class="text-lg font-bold mb-4">Current Event Earnings</h2>

      <div class="flex justify-between">
        <div>
          <p class="text-gray-700 mb-1 text-lg">Event Name:</p>
          <p class="text-gray-800 font-semibold text-2xl">Event 3</p>
        </div>

        <div>
          <p class="text-gray-700 mb-1 text-lg">Total Earnings:</p>
          <p class="text-green-600 font-semibold text-2xl">$1200</p>
        </div>
      </div>
    </div>
  </div>
</main>
