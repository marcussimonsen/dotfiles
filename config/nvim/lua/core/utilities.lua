return {
    lazy_eval = function (f, x)
        return function ()
            f(x)
        end
    end
}
