from datetime import datetime

now = datetime.now()

fecha = "%02d/%02d/%04d" % (now.day, now.month, now.year) # En formato DD/MM/YYYY
hora = "%02d:%02d:%02d" % (now.hour, now.minute, now.second) # En formato HH:MM:SS

#Imprime el mensaje con día y hora:

print("La fecha de hoy es " + fecha + ", y son las " + hora + ".")
