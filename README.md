# Cobol
Cobol ist zwar ein wenig Gewöhnungsbedürftig, aber es lohnt sich damit zu befassen, wenn man mal wieder Inspiration fürs Programmieren benötigt. Als "normaler" Programmierer muss man auf jeden Fall umdenken. Es ist so eine Art Programmiersprache für Finanzen & Co.

## ein einfaches Gerüst
Das Gerüst ist in etwa immer das Gleiche:
```cobol
identification division
program-id.     'hallo'.

data division.
working-storage section.

procedure division.
```
Allerdings passiert bei diesem Programm noch nichts großartiges. Es ist einfach nur ein Gerüst, das von oben nach unten abgearbeitet wird. Ganz oben stehen Informationen bezüglich des Programms. Der mittlere Block würde Variablen enthalten und deklarieren. Und ganz unten würden irgendwelche Aktionen angestoßen.
