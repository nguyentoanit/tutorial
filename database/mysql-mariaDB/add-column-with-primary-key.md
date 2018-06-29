# ALTER TABLE to add a composite primary key

```
ALTER TABLE provider ADD PRIMARY KEY(person,place,thing);
```
If a primary key already exists then you want to do this

```
ALTER TABLE provider DROP PRIMARY KEY, ADD PRIMARY KEY(person, place, thing);
```

# References
- https://stackoverflow.com/questions/8859353/alter-table-to-add-a-composite-primary-key
