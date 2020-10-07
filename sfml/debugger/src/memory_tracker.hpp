#pragma once

struct MemoryTracker
{
	int total_allocated = 0;
	int total_deallocated = 0;

	int current() { return total_allocated - total_deallocated; }

};

MemoryTracker memory_tracker;

void* operator new(size_t size)
{
	memory_tracker.total_allocated += size;
	return malloc(size);
}

void operator delete(void* pointer, size_t size)
{
	memory_tracker.total_deallocated += size;
	free(pointer);
}
