import pandas as pd

stock = 'C:\\desarrollo\\back\\proyectos\\stock\\STOCK.xlsx'
galpon1 = 'C:\\desarrollo\\back\\proyectos\\stock\\Galpon1.xlsx'
galpon1m = 'C:\\desarrollo\\back\\proyectos\\stock\\Galpon1m.xlsx'
df = pd.read_excel(galpon1)
#df = pd.read_excel(stock, sheet_name='GALPON 1')
# Reemplazar los valores NaN por 0
df_filled = df.fillna(0)
# Guardar el DataFrame modificado en un nuevo archivo Excel
df_filled.to_excel(galpon1m, sheet_name='GALPON 1', index=False)

# Mostrar el DataFrame con NaN reemplazados por 0
print(df_filled)