console.log('cart list ... ');

const cartService = (function(){

	function getList(param,callback, error){
		let body = {
			userId : param.userId
		};
		
		$.ajax({
			type:'post',
			url:"/api/cart/getCart",
			data: JSON.stringify(body),
			contentType:'application/json; charset=utf-8',
			success: function(data, status,xhr){
				if(callback) callback(data.list);
			},
			error : function(xhr,status, err){
				if(err) error();
			}
		});
	}
	
	function deleteCart(param,callback, error){
		
		$.ajax({
			type:'post',
			url:"/api/cart/delete",
			data: JSON.stringify(param),
			contentType:'application/json; charset=utf-8',
			success: function(data, status,xhr){
				if(callback) callback(data);
			},
			error : function(xhr,status, err){
				if(err) error();
			}
		});
	}
	
	function updateCart(param,callback, error){
		
		$.ajax({
			type:'post',
			url:"/api/cart/update",
			data: JSON.stringify(param),
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
		getList: getList,
		deleteCart:deleteCart,
		updateCart:updateCart
	};
})();