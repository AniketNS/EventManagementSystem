<form>
  <div class="bg-white shadow rounded-lg p-6">
    <div class="mb-4">
      <label for="username" class="block text-gray-700 text-sm font-medium mb-2">Username</label>
      <input type="text" id="username" name="username" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="password" class="block text-gray-700 text-sm font-medium mb-2">Password</label>
      <input type="password" id="password" name="password" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="email" class="block text-gray-700 text-sm font-medium mb-2">Email</label>
      <input type="email" id="email" name="email" class="border-2 border-gray-300 p-2 w-full rounded" required>
    </div>
    <div class="mb-4">
      <label for="role" class="block text-gray-700 text-sm font-medium mb-2">Role</label>
      <select id="role" name="role" class="border-2 border-gray-300 p-2 w-full rounded" required>
      	<option value="">Select Role</option>
        <option value="Admin">Admin</option>
        <option value="Organizer">Organizer</option>
        <option value="Participant">Participant</option>
      </select>
    </div>
    <div class="mb-4">
      <label for="name" class="block text-gray-700 text-sm font-medium mb-2">Name</label>
      <input type="text" id="name" name="name" class="border-2 border-gray-300 p-2 w-full rounded">
    </div>
    <div class="mb-6">
      <label for="phone_number" class="block text-gray-700 text-sm font-medium mb-2">Phone Number</label>
      <input type="tel" id="phone_number" name="phone_number" class="border-2 border-gray-300 p-2 w-full rounded">
    </div>
    <button type="submit" class="bg-gray-800 text-white hover:bg-white hover:text-black font-bold py-2 px-4 rounded">
      Add User
    </button>
  </div>
</form>