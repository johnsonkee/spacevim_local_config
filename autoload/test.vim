
function! Fibo(N) abort
    let t = a:N
    let b = 0
    while t > 0
        let t = t - 1
        let a = 1
        let b = 1
        let c = 73
        while c > 0
            let c = c - 1
            let tmp = a + b
            let a = b
            let b = tmp
        endwhile
    endwhile
    echo b
endfunction

function! LuaFibo(N) abort
lua << EOF
local a, b, r, c, t
import vim
t = vim.eval("str2nr(a:N)")
while t > 0 do
        t = t - 1
        a = 1
        b = 1
        c = 73
        while c > 0 do
                c = c - 1
                r = a + b
                a = b
                b = r
        end
end

print(string.format("%d", b))
EOF
endfunction
function! PythonFibo(N) abort
pyx << EOF
a = 0
b = 0
r = 0
c = 0
t = 0
t = vim.eval("str2nr(a:N)")
t = int(t)
while t > 0:
  t = t - 1
  a = 1
  b = 1
  c = 73
  while c > 0:
    c = c - 1
    r = a + b
    a = b
    b = r

print("%d" % b)
EOF
endfunction
function! s:test(...) abort
        " for func in a:000
                let start = reltime()
                call call(a:1,[a:2])
                let sec = reltimefloat(reltime(start))
                echom printf('%s(%d): %.6g sec', a:1, a:2, sec)
        " endfor
endfunction

command! -nargs=+ TestFunc call s:test(<f-args>)
