 var ReciclajeController = {

    calculeTotal: function () {
      let calule = 0 
      $( ".ganancia" ).each(function( index ) {
        calule = parseFloat($(this).val(), 10) + calule
      });
      $("input[name='total']").val(calule)
    },

    calculateByProduct: function (){
      $(".cantidad").on("keyup", (e) =>{
        console.log($(e.currentTarget).val());
        let ganancia = $(e.currentTarget).val() * $(e.currentTarget).siblings(".price").val()
        $(e.currentTarget).parent("div").siblings(".hermano").children(".ganancia").val(ganancia)
        this.calculeTotal()
      });
    },

    validInputCheck: function () {
      $(".valid").on("click", (e)=> {
        console.log($(e.currentTarget))
        if($(e.currentTarget)[0].checked){
          console.log("Si")
          $(e.currentTarget).parents("div").siblings(".hermana").children(".cantidad").prop("disabled", false);
        }
        else{
          console.log("No")
          $(e.currentTarget).parents("div").siblings(".hermana").children(".cantidad").val(0)
          $(e.currentTarget).parents("div").siblings(".hermano").children(".ganancia").val(0)
          $(e.currentTarget).parents("div").siblings(".hermana").children(".cantidad").prop("disabled", true);
          this.calculeTotal()
        }
      })
    },
    bindEvents: function(){
      this.calculateByProduct()
      this.validInputCheck()
    },

    start: function (){
      console.log("Init Controller")
      this.bindEvents()
    }
 }

 jQuery(function($){
  ReciclajeController.start();
});