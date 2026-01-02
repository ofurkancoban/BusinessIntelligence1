# taking date of the week from a given date
import datetime
return datetime.datetime.strptime(value, '%Y-%m-%d').strftime('%A')
