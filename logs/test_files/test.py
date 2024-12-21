# Import all libs
import subprocess
import os
import time

# Configuration
repo_url = 'https://github.com/RAPALLE2/Rapalle.net'
repo_path = 'C:\\Users\\Tobi\\Desktop\\Neuer Ordner\\Rapalle.net'  # Updated local path
service_name = 'your_application_service_name'  # Name of the service to stop/start
check_interval = 60  # Time interval to check for new commits (in seconds)


def clone_repo():
    try:
        if not os.path.isdir(repo_path):
            print(f'Cloning repository from {repo_url}...')
            subprocess.run(['git', 'clone', repo_url, repo_path], check=True)
            print('Repository cloned.')
        else:
            print('Repository already exists.')
    except Exception as e:
        print(f'An error occurred while cloning the repository: {e}')


def get_latest_commit_sha():
    try:
        # Check if the directory is a git repository
        if not os.path.isdir(os.path.join(repo_path, '.git')):
            raise RuntimeError(f"The directory {repo_path} is not a git repository.")

        result = subprocess.run(['git', 'rev-parse', 'HEAD'], cwd=repo_path, capture_output=True, text=True)
        if result.returncode == 0:
            return result.stdout.strip()
        else:
            raise RuntimeError(f"Git command failed: {result.stderr}")
    except Exception as e:
        print(f'An error occurred while getting the latest commit SHA: {e}')
    return None


def stop_application():
    pass
    # try:
    #    print(f'Stopping the application: {service_name}')
    #    # Command to stop the application
    #    subprocess.run(['systemctl', 'stop', service_name], check=True)
    #    print('Application stopped.')
    # except Exception as e:
    #    print(f'An error occurred while stopping the application: {e}')


def start_application():
    pass
    # try:
    #    print(f'Starting the application: {service_name}')
    #    # Command to start the application
    #    subprocess.run(['systemctl', 'start', service_name], check=True)
    #    print('Application started.')
    # except Exception as e:
    #    print(f'An error occurred while starting the application: {e}')


def fetch_and_merge_repo():
    try:
        print('Fetching the latest changes from the repository...')
        subprocess.run(['git', 'fetch'], cwd=repo_path, check=True)
        print('Merging the latest changes...')
        subprocess.run(['git', 'merge', 'origin/main'], cwd=repo_path, check=True)
        print('Repository updated with the latest changes.')
    except Exception as e:
        print(f'An error occurred while updating the repository: {e}')


def wait_for_new_commit():
    print('Checking for new commits...')
    last_commit_sha = get_latest_commit_sha()
    if not last_commit_sha:
        print('No commits found in the repository.')
        return

    while True:
        time.sleep(check_interval)
        current_commit_sha = get_latest_commit_sha()
        if current_commit_sha != last_commit_sha:
            print('New commit detected:')
            print(f'Commit SHA: {current_commit_sha}')
            stop_application()
            fetch_and_merge_repo()
            start_application()
            last_commit_sha = current_commit_sha
        else:
            print('No new commit yet. Checking again...')


if __name__ == "__main__":
    clone_repo()
    wait_for_new_commit()
