# Array in FORTRAN

In FORTRAN, list/Array syntax is :

```FORTRAN
<DTYPE>, DIMENSION (<id>) :: <var>
or
<DTYPE> :: <var>(<dim>)
```
> `<DTYPE>` means Datatype

So, we can create an array of any datatype with fixed size

For m cross n matrix: `<id>` = m,n

>In FORTRAN, indexing starts from 1, unlike 0 in Python.  
We can specify the initial indexing as well by using `<id>` = 0:2, 3  
meaning x axis is indexed as 0,1,2
whereas y axis as 1,2,3 (default indexing)
>
>in general m:n means starting with m,m+1,m+2,...,n
total no of items = n-m+1
>
>Array accessing: `<arr>`(m,n)