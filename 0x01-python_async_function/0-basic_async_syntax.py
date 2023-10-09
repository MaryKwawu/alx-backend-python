#!/usr/bin/env python3
"""Write an asynchronous coroutine that takes in an integer argument
(max_delay, with a default value of 10) named wait_random that waits
for a random delay between 0 and max_delay (included and float value)
seconds and eventually returns it.

Use the random module.
"""
import asyncio
import random

async def wait_random(max_delay=10):
    """Wait for some time"""
    delay = random.uniform(0, max_delay)  
    await asyncio.sleep(delay)  
    return delay

async def main():
    random_delay = await wait_random()
    print(f"Waited for {random_delay:.2f} seconds."
if __name__ == "__main__":
    asyncio.run(main())
