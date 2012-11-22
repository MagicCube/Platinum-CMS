$(document).ready(function(){
	$('#main_menu li.main').hover(
			function()
			{
				$('ul', this).css('visibility', 'visible');
				$('ul').css('z-index', '99');
			},
			function()
			{
				$('ul', this).css('visibility', 'hidden');
				$('ul').css('z-index', '0');
			});
});


/*var flag = true;

function down_1()
{
	var submenu = document.getElementById("down_1");
	closeOther("down_1");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}		
}


function down_2()
{
	var submenu = document.getElementById("down_2");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}		
}

function down_3()
{
	var submenu = document.getElementById("down_3");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}	
}

function down_4()
{
	var submenu = document.getElementById("down_4");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}	
}

function down_5()
{
	var submenu = document.getElementById("down_5");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}	
}

function down_6()
{
	var submenu = document.getElementById("down_6");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}	
}

function down_7()
{
	var submenu = document.getElementById("down_7");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}	
}

function down_8()
{
	var submenu = document.getElementById("down_8");
	if(flag == true)
	{
		submenu.style.visibility = "visible";
		flag = false;
	}
	else	
	{
		submenu.style.visibility = "hidden";
		flag = true;
	}	
}

function closeOther(obj)
{
	var index = 1;
	var submenu;
	while(index != 8)
	{
		var id = "down"+index.toString();
		if(id != obj)
		{
			submenu = document.getElementById(id);
			submenu.style.visibility = "hidden";
		}
		index++;
	}
}*/