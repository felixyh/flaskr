http://www.pythondoc.com/flask/tutorial/index.html

# Tips

1. Ensure the tmp folder exist for pre-defined sqlite file

2. Use absolute path for sqlite file
```
import os
PROJECT_ROOT = os.path.dirname(os.path.realpath(__file__))
DATABASE = os.path.join(PROJECT_ROOT, 'tmp', 'flaskr.db')
```

3. decode in init db
```
db.cursor().executescript(f.read().decode())
```

4. test code , use byte type
```
assert b'No entries here so far' in rv.data 
```
