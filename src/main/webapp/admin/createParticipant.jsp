<form>
  <div class="bg-white shadow rounded-lg p-6">
    <div class="mb-4">
      <label for="user_id" class="block text-gray-700 text-sm font-medium mb-2">User ID</label>
      <input type="number" id="user_id" name="user_id" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="user_name" class="block text-gray-700 text-sm font-medium mb-2">User Name</label>
      <input type="text" id="user_name" name="user_name" class="border-2 border-gray-300 p-2 w-full rounded" disabled>
    </div>
    <div class="mb-4">
      <label for="event_id" class="block text-gray-700 text-sm font-medium mb-2">Event ID</label>
      <input type="number" id="event_id" name="event_id" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-6">
      <label for="event_name" class="block text-gray-700 text-sm font-medium mb-2">Event Name</label>
      <input type="text" id="event_name" name="event_name" class="border-2 border-gray-300 p-2 w-full rounded" disabled>
    </div>
    <button type="submit" class="bg-gray-800 text-white hover:bg-white hover:text-black font-bold py-2 px-4 rounded">
      Add Participant
    </button>
  </div>
</form>