<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="container mx-auto px-8 py-4">
  <!-- Transaction summary -->
  <div class="bg-white shadow-md rounded-lg p-6 mb-8">
    <h2 class="text-lg font-bold mb-4">Transaction Summary</h2>

    <div class="flex justify-between mb-4">
      <p>Total Amount Paid:</p>
      <p class="text-green-600 font-semibold">$500</p>
    </div>

    <!-- Display individual transactions -->
    <table class="min-w-full">
      <thead>
        <tr>
          <th class="px-4 py-2 text-left">ID</th>
          <th class="px-4 py-2 text-left">Event ID</th>
          <th class="px-4 py-2 text-left">User ID</th>
          <th class="px-4 py-2 text-left">Amount</th>
          <th class="px-4 py-2 text-left">Date</th>
          <!-- Add more table headers as needed -->
        </tr>
      </thead>
      <tbody>
        <!-- Example transaction row -->
        <tr>
          <td class="px-4 py-2">1</td>
          <td class="px-4 py-2">123</td>
          <td class="px-4 py-2">456</td>
          <td class="px-4 py-2">$100</td>
          <td class="px-4 py-2">May 10, 2023</td>
          <!-- Add more transaction rows as needed -->
        </tr>
         <tr>
          <td class="px-4 py-2">2</td>
          <td class="px-4 py-2">123</td>
          <td class="px-4 py-2">456</td>
          <td class="px-4 py-2">$100</td>
          <td class="px-4 py-2">May 11, 2023</td>
          <!-- Add more transaction rows as needed -->
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Add more sections or elements as needed -->

</main>
