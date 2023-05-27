<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main-content flex-1">
  <div class="container mx-auto p-8">
    <h1 class="text-3xl font-bold mb-4">Participant Dashboard</h1>

    <!-- My Events Section -->
    <section class="mb-8">
      <h2 class="text-lg font-bold mb-4">My Events</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <!-- Example event card -->
        <div class="bg-white shadow-md rounded-lg p-6">
          <h3 class="text-xl font-bold mb-2">Event Name</h3>
          <p class="text-gray-700 mb-4">Event Date: May 31, 2022</p>
          <p class="text-gray-700 mb-4">Location: Event Venue</p>
          <a href="#" class="text-blue-500 hover:underline">View Details</a>
        </div>

        <!-- Add more participated event cards as needed -->
      </div>
    </section>

    <!-- Ongoing Events Section -->
    <section class="mb-8">
      <h2 class="text-lg font-bold mb-4">Ongoing Events</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <!-- Example ongoing event card -->
        <div class="bg-white shadow-md rounded-lg p-6">
          <h3 class="text-xl font-bold mb-2">Event Name</h3>
          <p class="text-gray-700 mb-4">Event Date: May 31, 2023</p>
          <p class="text-gray-700 mb-4">Location: Event Venue</p>
          <a href="#" class="text-blue-500 hover:underline">View Details</a>
        </div>

        <!-- Add more ongoing event cards as needed -->
      </div>
    </section>

    <!-- Transactions Section -->
    <section>
      <h2 class="text-lg font-bold mb-4">Transactions</h2>
      <!-- Display a summary of the participant's transaction history -->
      <!-- Show event name, transaction date, payment amount, status, etc. -->
      <!-- Offer options to view more details about each transaction -->
    </section>

  </div>
</main>
