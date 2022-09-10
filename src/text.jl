using HypertextLiteral
export text
@htl("""<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">""")

begin
	color_range=["gray","red","green","yellow","pink","indigo"]
	size_range=[50,100,200,300,400,500,600,700,800,900]
	text_color=Dict(["text-$(color)-$(size)"=>"text-$(color)-$(size)" for color in color_range, size in size_range])
	text_color["text-black"]="text-black"
	text_size=Dict(
		"xs"=>"xs",
		"sm"=>"text-sm",
		"base"=>"text-base",
		"xs"=>"text-xs",
		"xl"=>"text-xl",
		"3xl"=>"text-3xl",
		"2xl"=>"text-2xl",
		"4xl"=>"text-4xl",
		"5xl"=>"text-5xl",
		"6xl"=>"text-6xl",
		"7xl"=>"text-7xl",
		"8xl"=>"text-8xl",
		"9xl"=>"text-9xl"
	)
text_font_weight=Dict(
		"font-thin"=>"font-thin"	,
"font-extralight"=>"font-extralight"	,
"font-light"=>"font-light"	,
"font-normal"	=>"font-normal",
"font-medium"=>"font-medium" ,
"font-semibold"	=>"font-semibold",
"font-bold"=>"font-bold"	,
"font-extrabold"=>"font-extrabold",
"font-black"=>"font-black"
	)

	"""
	text_size=Dict(
		"xs"=>"text-xs",
		"sm"=>"text-sm",
		"base"=>"text-base",
		"xs"=>"text-xs",
		"xl"=>"text-xl",
		"3xl"=>"text-3xl",
		"2xl"=>"text-2xl",
		"4xl"=>"text-4xl",
		"5xl"=>"text-5xl",
		"6xl"=>"text-6xl",
		"7xl"=>"text-7xl",
		"8xl"=>"text-8xl",
		"9xl"=>"text-9xl"
	)
	text_font_weight=Dict(
		"font-thin"=>"font-thin"	,
"font-extralight"=>"font-extralight"	,
"font-light"=>"font-light"	,
"font-normal"	=>"font-normal",
"font-medium"=>"font-medium" ,
"font-semibold"	=>"font-semibold",
"font-bold"=>"font-bold"	,
"font-extrabold"=>"font-extrabold",
"font-black"=>"font-black"
	)
	"""
	
function text(str;size="base",color="text-black",fontweight="font-normal")
	    c=text_color[color]
		s=text_size[size]
		fw=text_font_weight[fontweight]
	@htl("""<p class="$(c) $(s) $(fw) truncate break-all">
	        $(str)</p>""")
    end

	function text(str)
	    c=text_color["text-black"]
		s=text_size["base"]
		fw=text_font_weight["font-normal"]
	@htl("""<p class="$(c) $(s) $(fw) truncate break-all">
	        $(str)</p>""")
    end

	
	
end