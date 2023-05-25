<form>
  <div class="bg-white shadow rounded-lg p-6">
    <div class="mb-4">
      <label for="event_id" class="block text-gray-700 text-sm font-medium mb-2">Event ID</label>
      <input type="number" id="event_id" name="event_id" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="user_id" class="block text-gray-700 text-sm font-medium mb-2">User ID</label>
      <input type="number" id="user_id" name="user_id" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="type" class="block text-gray-700 text-sm font-medium mb-2">Transaction Type</label>
      <select id="type" name="type" class="border-2 border-gray-300 p-2 w-full rounded" required>
        <option value="event_creation">Event Creation</option>
        <option value="event_participation">Event Participation</option>
      </select>
    </div>
    <div class="mb-6">
      <label for="amount" class="block text-gray-700 text-sm font-medium mb-2">Amount</label>
      <input type="number" id="amount" name="amount" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <button type="submit" class="bg-gray-800 text-white hover:bg-white hover:text-black font-bold py-2 px-4 rounded">
      Add Transaction
    </button>
  </div>
</form>