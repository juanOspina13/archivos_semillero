-- Ejemplo if con elsif
if ( Condidion1 ) then
    <Codigo1>;
elsif ( Condicion2 ) then
    <Codigo2>;
else
    <Codigo3>;
end if;
/
-- Ejemplo CASE
case <NombreVariable>
    when Condicion1 then
        <Resultado1>;
    when Condicion2 then
        <Resultado2>;
        .
        .
        .
    when CondicionN then
        <ResultadoN>;
    [else resultado_Inseperado;]
end case;
/
-- Ejemplo de loop
loop
    -- Instrucciones a repetir
    exit when <Expresion>;
end loop;
/
-- Ejemplo while
while ( Condicion ) loop
    -- Instrucciones a repetir
    -- Se puede presentar el caso de ciclos infinitos si no se altera la Condicion en algun momento
end loop;
/
-- Ejemplo for
for contador in [ reverse ] inicio..final loop
    -- Instrucciones a repetir
end loop;