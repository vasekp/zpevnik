### Můj osobní zpěvník v novém hávu.

Pro překlad:

```bash
xetex -fmt pdfcsplain {soubor}
```

Potřebuje fonty:
- **Minion Pro** Regular, Italic, Semibold
- **Myriad Pro** Bold, Semibold, Semibold Italic
- české obdoby Computer Modern (balíček `texlive-cs`)

Pokud `pdfcsplain` není přeložen pro `XeLaTeX`, je třeba použít
```bash
xetex -jobname pdfcsplain -ini -etex csplain.ini
```
