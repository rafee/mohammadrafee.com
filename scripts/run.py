from google.cloud import storage, exceptions
import os


def create_bucket(storage_client, bucket_name):
    """Creates a new bucket."""
    try:
        bucket = storage_client.create_bucket(bucket_name)
        print("Bucket {} created".format(bucket.name))
        return bucket
    except exceptions.Conflict:
        print("Bucket {} already exists".format(bucket_name))
        return storage_client.get_bucket(bucket_name)


def upload_folder_gcs(root, directory, bucket):
    root = os.path.join(root, "")
    curr_dir = root + directory
    file_list = os.listdir(curr_dir)
    for entry in file_list:
        full_path = os.path.join(curr_dir, entry)
        remote_dir = full_path[len(root):]
        if os.path.isfile(full_path):
            blob = bucket.blob(remote_dir)
            blob.upload_from_filename(full_path)
        else:
            upload_folder_gcs(root, remote_dir, bucket)


if __name__ == "__main__":
    project_name = "mohammadrafee-com"
    storage_client = storage.Client(project=project_name)
    bucket_name = "www.mohammadrafee.com"
    bucket = create_bucket(storage_client, bucket_name)
    local_path = "../public/"
    upload_folder_gcs(local_path, "", bucket)
