# Example Nextflow Pipeline

- requires `docker` to be installed for container usage

Usage

```
$ nextflow run main.nf
N E X T F L O W  ~  version 23.04.1
Launching `main.nf` [mighty_brazil] DSL2 - revision: 4dce89893a
executor >  local (20)
[db/95814c] process > MAKE_HAMBURGERS:ADD_TOP_BUN (Linda)       [100%] 5 of 5 ✔
[54/a3f2a2] process > MAKE_HAMBURGERS:ADD_CHEESE (Louise)       [100%] 5 of 5 ✔
[5f/a13f49] process > MAKE_HAMBURGERS:ADD_BURGER_PATTY (Louise) [100%] 5 of 5 ✔
[49/387b13] process > MAKE_HAMBURGERS:ADD_BOTTOM_BUN (Louise)   [100%] 5 of 5 ✔
[[id:Bob, orderName:Tunami], Bob.Tunami.burger.txt]
[[id:Tina, orderName:SweatyPalms], Tina.SweatyPalms.burger.txt]
[[id:Linda, orderName:ChardToACrisp], Linda.ChardToACrisp.burger.txt]
[[id:Gene, orderName:Beefsquatch], Gene.Beefsquatch.burger.txt]
[[id:Louise, orderName:SuperLeek], Louise.SuperLeek.burger.txt]


$ tree output
output
├── Bob.Tunami.burger.txt
├── Gene.Beefsquatch.burger.txt
├── Linda.ChardToACrisp.burger.txt
├── Louise.SuperLeek.burger.txt
└── Tina.SweatyPalms.burger.txt
```