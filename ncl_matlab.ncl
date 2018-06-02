;
; In this function, We try to implement MATLAB functions with ncl
; Functions here are not implemented by the ncl
;
; Contact:
;    author: Perry92205
;    mail: voldemort92205@gmail.com
;

undef ("zeros")
function zeros (dim:integer, type:string)
begin
    ; version 1: 2018/6/3
    tmp = new (dim, type)
    output := where (ismissing (tmp), 0, tmp@_FillValue)
    output@_FillValue = tmp@_FillValue
    return (output)
end
