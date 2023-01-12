const tagService = (function() {
	function toggleTag(param,callback,error){
		$.ajax({
			type: 'post',
			url:'/api/mypage/updateTagList',
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
		toggleTag : toggleTag
	};
	
})();







