<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Transaction Page</title>
  <!-- Include Tailwind CSS -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>

<body>
  <main class="container mx-auto px-8 py-4">
    <h1 class="text-3xl font-bold mb-4">Transaction Page</h1>

    <!-- Transaction form -->
    <form action="/process-transaction" method="post" class="bg-white shadow-md rounded-lg p-6">
      <h2 class="text-lg font-bold mb-4">Transaction Details</h2>

      <!-- Event ID and Participant ID -->
      <input type="hidden" name="eventId" value="${param.eventId}">
      <input type="hidden" name="participantId" value="${param.participantId}">

      <!-- Transaction fields -->
      <div class="mb-4">
        <label for="amount" class="block text-gray-700 font-semibold mb-1">Amount:</label>
        <input type="number" id="amount" name="amount" class="w-full border border-gray-400 p-2 rounded-md" required>
      </div>

      <div class="mb-4">
        <label for="paymentMethod" class="block text-gray-700 font-semibold mb-1">Payment Method:</label>
        <select id="paymentMethod" name="paymentMethod" class="w-full border border-gray-400 p-2 rounded-md" required>
          <option value="">Select a payment method</option>
          <option value="Credit Card">Credit Card</option>
          <option value="PayPal">PayPal</option>
          <!-- Add more payment methods as needed -->
        </select>
      </div>

      <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded">Submit Transaction</button>
    </form>
  </main>
</body>

</html>
