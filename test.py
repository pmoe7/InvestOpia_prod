from datetime import date
from datetime import timedelta

today = date.today()
start = today - timedelta(5)
print(start)