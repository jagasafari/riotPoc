<hello-world>
    <p> {opts.greeting} <trim value={ value } length="3"/></p>
    this.value = "world"
</hello-world>
<trim>
    <span>{opts.value.substr(0,opts.length)}</span>
</trim>
