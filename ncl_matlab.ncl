undef ("zeros")
function zeros (dim:integer, type:string)
begin
    tmp = new (dim, type)
    output := where (ismissing (tmp), 0, tmp@_FillValue)
    output@_FillValue = tmp@_FillValue
	return (output)
end
