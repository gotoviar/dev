import os

print(os.getcwd())

for item in os.listdir(os.getcwd()):
    idx = item.find('.')
    
    file_name = item[0 : idx]
    file_ext = item[idx+1 : len(item)]
    #print(file_name)
    #print(file_ext)
    print('{{"{0}" : "{1}"}},'.format(file_name, file_ext))
