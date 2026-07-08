<!-- [[[cog
import cog
from nbconvert.exporters import MarkdownExporter
from nbconvert.preprocessors import RegexRemovePreprocessor

rrp = RegexRemovePreprocessor()
rrp.patterns = (r"<style>",)
e = MarkdownExporter()
e.register_preprocessor(rrp, enabled=True)
(body, resources) = e.from_filename("welcome.ipynb")
cog.out(f"\n{body}\n")
]]] -->

<h1><center>Welcome to MadPy!</center></h1>
<br>
<center><img src="img/madpy-logo.png" alt="The MadPy Magpie" width="35%"/></center>

# Organizers

<table style="border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
  <tr>
    <td><img src="img/edrogers.jpg" alt="Ed Rogers" style="width: 300px;" /></td>
    <td><img src="img/djhoese.jpg" alt="David Hoese" style="width: 300px;" /></td>
    <td><img src="img/joshkarpel.jpg" alt="Josh Karpel" style="width: 300px;" /></td>
  </tr><tr>
    <td><p class="caption">Ed Rogers</p></td>
    <td><p class="caption">David Hoese</p></td>
    <td><p class="caption">Josh Karpel</p></td>
  </tr>
</table>

# Code of Conduct

**MadPy is a community group** and open to all experience levels. We are committed to **a safe, professional environment**

### Our Commitment to You

We are enthusiastically focused on improving our event and making it a place that is welcoming to all. All reports will be taken seriously, handled respectfully, and dealt with in a timely manner.

Learn more about the MadPy Code of Conduct:

https://github.com/madison-python/code-of-conduct


# Python Warm-Up

#### Meet `foo.py`


```python
%%writefile foo.py
print("loading foo!")

def greet():
    return "hello from foo"
```

    Writing foo.py


#### The baseline: importing `foo`


```python
import foo
```

    loading foo!



```python
def run():
    return foo.greet()
```


```python
run()
```




    'hello from foo'




```python
import sys
del sys.modules["foo"]
```

#### Watching `sys.modules` (eager import)


```python
"foo" in sys.modules
```




    False




```python
import foo
```

    loading foo!



```python
"foo" in sys.modules
```




    True




```python
def run():
    return foo.greet()

run()
```




    'hello from foo'




```python
del sys.modules["foo"]
```

#### New in Python 3.15 (to be released in October 2026)


```python
from sys import version

print(version)
```

    3.15.0b3 (main, Jun 23 2026, 15:19:17) [Clang 22.1.3 ]



```python
lazy import foo
```


```python
lazy import foo

"foo" in sys.modules, "foo" in sys.lazy_modules
```




    (False, True)




```python
def run():
    return foo.greet()
```


```python
"foo" in sys.modules, "foo" in sys.lazy_modules
```




    (False, True)




```python
run()
```

    loading foo!





    'hello from foo'




```python
"foo" in sys.modules, "foo" in sys.lazy_modules
```




    (True, False)



#### Easy Win 1: retiring `if TYPE_CHECKING:`

```python
if TYPE_CHECKING:
    import pandas as pd
    import numpy as np

def process(df: pd.DataFrame) -> np.ndarray: ...
```

```python
lazy import pandas as pd
lazy import numpy as np

def process(df: pd.DataFrame) -> np.ndarray: ...
```

No guard. No runtime cost.

#### Easy Win 2: retiring function-level imports

```python
def render_chart(data):
    import matplotlib.pyplot as plt
    ...
```

```python
lazy import matplotlib.pyplot as plt

def render_chart(data):
    ...
```

Back at the top of the file, PEP 8 and all. Loaded exactly once, on first use.

#### Easy Win 3: when `--help` takes forever

- CLI tools eagerly import everything at startup — even just for `--help`
- Profile it: `python -X importtime yourcli.py --help`
- PEP 810 reports 50–70% faster startup in some real-world CLIs

#### What's not allowed

- No `lazy` inside functions, classes, or `try`/`except` blocks
- No `lazy import *`
- No `lazy from __future__ import annotations`

`lazy` only works as a module-level statement.


```python
from pathlib import Path

Path("foo.py").unlink(missing_ok=True)
```

# Sponsor

<center><img src="img/Fetch_Rewards_Logo.jpg" alt="Sponsor Logo: Fetch Rewards" width="500px"/></center>

# Want more MadPy?


<table style="border:none; border-collapse:collapse; cellspacing:0; cellpadding:0">
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/madpy-logo.png" alt="MadPy" style="width: 45px;" /></td><td style="vertical-align: middle; border: none;"><b><a href="https://madpy.com">madpy.com</a></b></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/meetup-logo.png" alt="Meetup" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://www.meetup.com/madpython/">meetup.com/madpython</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/github-logo.png" alt="GitHub" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://github.com/madison-python">github.com/madison-python</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/fosstodon-logo.png" alt="Mastodon" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://fosstodon.org/@madpy">fosstodon.org/@madpy</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/slack-logo.png" alt="Slack" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://slack.madpy.com">slack.madpy.com</a></td>
  </tr>
  <tr style="background-color: transparent; border: none;">
    <td style="border: none;"><img src="img/linkedin-logo.png" alt="LinkedIn" style="width: 25px;" /></td><td style="vertical-align: middle; border: none;"><a href="https://linkedin.com/company/madpy">linkedin.com/company/madpy</a></td>
  </tr>
</table>


# The Best Way to Help MadPy

### Talk to your employer about Sponsorship!

<img src="https://madpy.com/static/images/2026-07-09-MadPy-Lightning-Talks-social-card-1800x1200.png" alt="Logo for the MadPy talk" />

<!-- [[[end]]] -->
