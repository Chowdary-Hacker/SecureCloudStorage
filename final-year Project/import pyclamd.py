import pyclamd

def scan_file(file_path):
    try:
        clamav = pyclamd.ClamdUnixSocket()
        scan_result = clamav.scan_file(file_path)
        if scan_result[file_path] == 'OK':
            print("File is clean")
        else:
            print("File is infected: ", scan_result[file_path])
    except pyclamd.ConnectionError:
        print("Could not connect to clamd server")

# Usage
file_path = "/path/to/your/file"
scan_file(file_path)