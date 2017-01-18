# MySQL ROT13
Returns the ROT13 encoding (or decoding) of the string.

### What's ROT13
> The ROT13 encoding simply shifts every letter by 13 places in the alphabet while leaving non-alpha characters untouched. Encoding and decoding are done by the same function, passing an encoded string as argument will return the original version.
> 
> php.net

### How to Use
```sql
  SELECT rot13('Encode the Samuel Faj');
```
> | `rot13('Encode the Samuel Faj')` |
|----------------------------------|
| Rapbqr gur Fnzhry Snw            |


```sql
  SELECT rot13(rot13('Encode the Samuel Faj'));
```
> | `rot13(rot13('Encode the Samuel Faj'))` |
|----------------------------------|
| Encode the Samuel Faj            |
