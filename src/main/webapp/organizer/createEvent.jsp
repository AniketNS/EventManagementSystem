<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container mx-auto p-8">
  <h1 class="text-3xl font-bold mb-4">Create Event</h1>
  <form action="/event-form" method="post" class="bg-white shadow-md p-6 rounded-lg">
    <div class="mb-4">
      <label for="eventName" class="block text-gray-700 font-semibold mb-1">Event Name:</label>
      <input type="text" id="eventName" name="eventName" class="w-full border border-gray-400 p-2 rounded-md" required>
    </div>
    <div class="mb-4">
      <label for="eventDescription" class="block text-gray-700 font-semibold mb-1">Event Description:</label>
      <textarea id="eventDescription" name="eventDescription" class="w-full border border-gray-400 p-2 rounded-md" required></textarea>
    </div>
    <div class="mb-4">
      <label for="eventDate" class="block text-gray-700 font-semibold mb-1">Event Date:</label>
      <input type="date" id="eventDate" name="eventDate" class="w-full border border-gray-400 p-2 rounded-md" required>
    </div>
    <div class="mb-4">
      <label for="eventLocation" class="block text-gray-700 font-semibold mb-1">Event Location:</label>
      <input type="text" id="eventLocation" name="eventLocation" class="w-full border border-gray-400 p-2 rounded-md">
    </div>
    <div class="mb-4">
      <label for="eventPrice" class="block text-gray-700 font-semibold mb-1">Event Price:</label>
      <input type="number" id="eventPrice" name="eventPrice" class="w-full border border-gray-400 p-2 rounded-md" required>
    </div>
    <input type="hidden" name="organizerId" value="<%= request.getAttribute("organizerId") %>">
    <!-- Replace 'organizerId' with the actual attribute name used to store the organizer's ID -->
    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded">Create Event</button>
  </form>
</div>

