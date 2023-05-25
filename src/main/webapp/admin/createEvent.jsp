<form>
  <div class="bg-white shadow rounded-lg p-6">
    <div class="mb-4">
      <label for="name" class="block text-gray-700 text-sm font-medium mb-2">Event Name</label>
      <input type="text" id="name" name="name" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="description" class="block text-gray-700 text-sm font-medium mb-2">Description</label>
      <textarea id="description" name="description" class="border-2 border-gray-300 p-2 w-full rounded" rows="4"></textarea>
    </div>
    <div class="mb-4">
      <label for="date" class="block text-gray-700 text-sm font-medium mb-2">Date</label>
      <input type="datetime-local" id="date" name="date" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="location" class="block text-gray-700 text-sm font-medium mb-2">Location</label>
      <input type="text" id="location" name="location" class="border-2 border-gray-300 p-2 w-full rounded">
    </div>
    <div class="mb-4">
      <label for="price" class="block text-gray-700 text-sm font-medium mb-2">Price</label>
      <input type="number" id="price" name="price" class="border-2 border-gray-300 p-2 w-full rounded" step="0.01" min="0">
    </div>
    <div class="mb-6">
      <label for="organizer_id" class="block text-gray-700 text-sm font-medium mb-2">Organizer ID</label>
      <input type="number" id="organizer_id" name="organizer_id" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <button type="submit" class="bg-gray-800 text-white hover:bg-white hover:text-black font-bold py-2 px-4 rounded">
      Add Event
    </button>
  </div>
</form>