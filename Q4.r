inventory <- list()

addedit <- function(item,quant)
{
    inventory[[item]] <<- quant
    # cat("added/updated")
}

del <- function(item)
{
    inventory[[item]] <<- NULL
}

display <- function()
{
    for(item in names(inventory))
    {
        # if(inventory[[item]]!=NULL)
        {
            cat(item,":",inventory[[item]],"\n")
        }
    }
}

addedit("apple",5)
addedit("banana",2)
del("banana")
display()
