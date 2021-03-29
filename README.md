This is part of the code to reproduce the results of the paper 

*Do Neural Networks for Segmentation Understand Insideness?* [\[pdf\]](https://cbmm.mit.edu/sites/default/files/publications/CBMM-Memo-105v2.pdf)

by [K. Villalobos](https://github.com/kimvc7) (\*), [V. Štih](https://github.com/vilim) (\*), [A. Ahmadinejad](https://github.com/Amiineh) (\*), S. Sundaram, J. Dozier, A. Francl, F. Azevedo, T. Sasaki (+), [X. Boix](http://web.mit.edu/xboix/www/index.html) (+)

(*) and (+) equal contribution 


### Code

* [random_walk.py](https://github.com/xboix/insideness_data/blob/master/random_walk.py): code to generate "random_walk" dataset (dataset in Section 5 in the paper)

* [Example.ipynb](https://github.com/xboix/insideness_data/blob/master/Example.ipynb): jupyter notebook with examples on how to use the code

* [data](https://github.com/xboix/insideness_data/tree/master/data): folder containing examples of the different datasets

### Docker container

```
docker pull xboixbosch/tf
```

### Credits

* [random_walk.py](https://github.com/xboix/insideness_data/blob/master/random_walk.py) was coded by V. Štih
* [Example.ipynb](https://github.com/xboix/insideness_data/blob/master/Example.ipynb) was coded by S. Sundaram
* The digs dataset was created by A. Ahmadinejad 
* The spiral dataset was created by K. Villalobos
