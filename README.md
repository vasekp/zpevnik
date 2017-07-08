### Můj osobní zpěvník v novém hávu.

Pro překlad:

```bash
xetex -fmt pdfcsplain {soubor}
```

Potřebuje fonty:
- **Minion Pro** Regular, Italic, Semibold
- **Myriad Pro** Bold, Semibold, Semibold Italic

Pokud `pdfcslatex` není přeložen pro `XeLaTeX`, je třeba použít
```bash
xetex -jobname pdfcsplain -ini -etex csplain.ini
```
