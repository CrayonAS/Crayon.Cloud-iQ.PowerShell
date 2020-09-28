function Invoke-CloudiQApiRequest($uri) {}
Mock Invoke-CloudiQApiRequest {
    [PSCustomObject]@{
        Items = @{
            CustomerId    = 4013280
            Name          = 'Demo Customer [T1/EUR]'
            ParentId      = 0
            AccountNumber = ''
        }
    }

    [PSCustomObject]@{
        Items = @{
            CustomerId    = 4013281
            Name          = 'Demo Customer [T2/EUR]'
            ParentId      = 0
            AccountNumber = ''
        }
    }

    [PSCustomObject]@{
        Items = @{
            CustomerId    = 4013278
            Name          = 'Demo Customer [T1/USD]'
            ParentId      = 0
            AccountNumber = ''
        }
    }

    [PSCustomObject]@{
        Items = @{
            CustomerId    = 4013279
            Name          = 'Demo Customer [T2/USD]'
            ParentId      = 0
            AccountNumber = ''
        }
    }
}

Mock Invoke-CloudiQApiRequest {
    [PSCustomObject]@{
        Items = @{
            CustomerId    = 4013280
            Name          = 'Demo Customer [T1/EUR]'
            ParentId      = 0
            AccountNumber = ''
        }
    }

    [PSCustomObject]@{
        Items = @{
            CustomerId    = 4013281
            Name          = 'Demo Customer [T2/EUR]'
            ParentId      = 0
            AccountNumber = ''
        }
    }
} -ParameterFilter { $Uri -Eq "organizations/?search=EUR" }