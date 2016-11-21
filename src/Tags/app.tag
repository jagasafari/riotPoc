<app>
    <h2>Recipe<h2>
    <ingredient each="{ingredients}"></ingredient>
    <script>
        this.ingredients =
        [
            {name:'Butter',amount:'3 Tbsp'},
            {name:'Fluff',amount:'10 oz'},
            {name:'Cereal',amount:'6 cups'}
        ]
    </script>
</app>
<ingredient>
    <label class={added:added}>
        <input type="checkbox" onchange="{oncheck}"/>
        {name}
    </label>
    <span>
        {amount}
    </span>
    <style scoped>
        :scope {
            margin-bottom: 10px;
            display:block;
            overflow:auto;
            padding:10px;
            background-color:#eee;
        }

        input {
            position: relative;
            top: -2px;
        }
        label {
            font-weight:bolt;
        }
        label.added {
            text.decoration:line-through;
        }

    </style>
    <script>
        oncheck(){
            console.info('on check callback')
        }
    </script>
</ingredient>
