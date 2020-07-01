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


def upload_files(bucket, local_folder):
    """Upload files to GCP bucket."""
    files = [f for f in os.listdir(
        local_folder) if os.path.isfile(os.path.join(local_folder, f))]
    for file in files:
        local_file = local_folder + file
        # print(local_file)
        blob = bucket.blob(file)
        blob.upload_from_filename(local_file)
    return f'Uploaded {files} to "{bucket.name}" bucket.'


# def get_file_list(directory):
#     # f = []
#     for (dirpath, dirnames, filenames) in os.walk(directory):
#         print("""\tDirectory: {}
#         Folder: {}
#         Filename: {}""".format(dirpath, dirnames, filenames))


if __name__ == "__main__":
    project_name = "mohammadrafee-com"
    storage_client = storage.Client(project=project_name)
    bucket_name = "www.mohammadrafee.com"
    bucket = create_bucket(storage_client, bucket_name)
    print("The bucket {} is available".format(bucket.name))
    upload_files(bucket, "../public/")
