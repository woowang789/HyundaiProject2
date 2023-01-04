console.log('product service ... ');

const productService = (function(){

	function get(param,callback, error){
		$.ajax({
			type:'get',
			url:"/api/product/get?productId="+param.productId+"&optionId="+param.optionId,
			contentType:'application/json; charset=utf-8',
			success: function(data, status,xhr){
				if(callback) callback(data);
			},
			error : function(xhr,status, err){
				if(err) error();
			}
		});
	}

	return {
		get: get

	};
})();