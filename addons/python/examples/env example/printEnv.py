import os
from dotenv import load_dotenv # pip install python-dotenv

# Load environment variables from a .env file
load_dotenv()

# Print the environment variable
print(os.getenv("MY_KEY"))
