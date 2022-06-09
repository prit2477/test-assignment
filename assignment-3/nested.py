def get_in(value, key):
    keys = key.split('/')
    for k in keys:
        value = value.pop(k)
    return value

object = {"x1":{"y1":"{"z1":"a1"}"}}
key = x1/y1/z1
print (get_in(object, key))
