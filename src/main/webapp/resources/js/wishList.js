console.log('wishList.js loaded....');

const wishService = (function() {
	function getList(param,callback, error){
		let page = param.page || 1;
		let body = {
			userId : param.userId
		};
		
		$.ajax({
			type:'post',
			url:"/api/mypage/getWishList/"+page,
			data: JSON.stringify(body),
			contentType:'application/json; charset=utf-8',
			success: function(data, status,xhr){
				if(callback) callback(data.count, data.list);
			},
			error : function(xhr,status, err){
				if(err) error();
			}
		});
		
	}
	function toggleWish(param,callback,error){
		$.ajax({
			type: 'post',
			url:'/api/mypage/updateWishList',
			data: JSON.stringify(param),
			contentType:'application/json; charset=utf-8',
			success: function(data, status,xhr){
				if(callback) callback(data);
			},
			error : function(xhr,status, err){
				if(err) error();
			}
		})
	}
	
	return {
		getList : getList,
		toggleWish : toggleWish
	};
	
})();