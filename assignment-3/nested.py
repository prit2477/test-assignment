def get_value(value, key):
    keys = key.split('/')
    for k in keys:
        value = value.pop(k)
    return value

object = {"a": { "b": { "c": "d" }}}
key = 'a/b/c'
print ("Result of x1/y1/z1:--", get_value(object, key))
