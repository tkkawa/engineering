import sys

if sys.platform.startswith('darwin'):
    print('Mac')
elif sys.platform.startswith('linux'):
    print('Linux')
