using HypertextLiteral
export alert
@htl("""<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">""")
begin
	alert_dict=Dict(
		"primary"=>"bg-blue-100 text-blue-700",
		"secondary"=>"bg-purple-100 text-purple-700",
		"success"=>"bg-green-100 text-green-700",
		"danger"=>"bg-red-100  text-red-700",
		"warning"=>"bg-yellow-100 text-yellow-700",
		"indigo"=>"bg-indigo-100 text-indigo-700",
		"light"=>"bg-gray-50 text-gray-500",
		"dark"=>"bg-gray-300 text-gray-800"
		
	)

	function alert(str;level="primary")
		@htl("""
		   <div class="$(alert_dict[level]) rounded-lg py-5 px-6 mb-4 text-base text-gray-800 mb-3" role="alert">
 					 $(str)
			</div>
		""")
	end
end