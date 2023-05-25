<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <main class="flex-grow">
        <div class="max-w-7xl mx-auto py-1 sm:px-6 lg:px-8">
            <div class="px-4 sm:px-0">
                <div class="flex flex-col items-center">
                    <div class="bg-white overflow-hidden shadow rounded-lg w-full sm:w-3/4 md:w-1/2 lg:w-1/3">
                        <div class="px-4 py-5 sm:p-6">
                            <img class="h-24 w-24 rounded-full object-cover mx-auto mb-4" src="https://via.placeholder.com/150" alt="User Avatar">
                            <dl>
                                <dt class="text-sm font-medium text-gray-500">Name</dt>
                                <dd class="mt-1 text-2xl font-semibold text-gray-900">{{ user.name }}</dd>
                            </dl>
                            <hr class="my-4">
                            <dl>
                                <dt class="text-sm font-medium text-gray-500">Username</dt>
                                <dd class="mt-1 text-xl font-semibold text-gray-900">{{ user.username }}</dd>
                            </dl>
                            <hr class="my-4">
                            <dl>
                                <dt class="text-sm font-medium text-gray-500">Email</dt>
                                <dd class="mt-1 text-xl font-semibold text-gray-900">{{ user.email }}</dd>
                            </dl>
                            <hr class="my-4">
                            <dl>
                                <dt class="text-sm font-medium text-gray-500">Role</dt>
                                <dd class="mt-1 text-xl font-semibold text-gray-900">{{ user.role }}</dd>
                            </dl>
                            <hr class="my-4">
                            <dl>
                                <dt class="text-sm font-medium text-gray-500">Phone Number</dt>
                                <dd class="mt-1 text-xl font-semibold text-gray-900">{{ user.phone_number }}</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>