var game_hosting = false;
var joined = false;
var guest = false;
global.is_in_MP = false; // voor disable trivia
global.type_buffer = noone;

function host_game() {
server_socket = network_create_server(network_socket_tcp, 6510, 4);
if server_socket >= 0
    {
	game_hosting = true;
    }
	else
	{
		//Connection error! Add failsafe codes here
	}
}

function join_game() {
	client_socket = network_create_socket(network_socket_tcp);
	var server = network_connect(client_socket , "127.0.0.1", 6510);
	if (server < 0)
		{
		//No connection! Failsafe codes here...
		}
	else
		{
		guest = true;
		//Connected!
		}
}

while (game_hosting = true){
	while (joined = false){
		var network_id = ds_map_find_value(async_load, "id");
		if network_id == server_socket
		{
			var type = ds_map_find_value(async_load, "type");
			switch(type)
			{
		case network_type_connect:
            var sock = ds_map_find_value(async_load, "socket");
            ds_list_add(socketlist, sock);
            break;
        case network_type_disconnect:
            var sock = ds_map_find_value(async_load, "socket");
            ds_map_delete(socketlist, sock);
            break;
		case network_type_data:
			//network_id;
			// to do
			break;
        }
    }
	}
}

while (guest = true){
	var network_id = ds_map_find_value(async_load, "id");
	if network_id == client_socket
    {
    //We have a new packet from the server
    } 
}


// levens, aantal torens, wavecount

//server naar client communicatie
while (game_hosting = true){
	while (global.type_buffer != noone) {
		for (var i = 0; i < ds_list_size(socketlist); ++i;)
		{
			network_send_packet(ds_list_find_value(socket_list, i), global.type_buffer, buffer_tell(global.type_buffer));
		}
		buffer_delete(global.type_buffer);
	}
}

//client naar server communicatie
while (global.is_in_MP){
	while (game_hosting = false){
		while (global.type_buffer != noone) {
			network_send_packet(client_socket, global.type_buffer, buffer_tell(global.type_buffer));
		buffer_delete(global.type_buffer);
		}
	}
}


// while loop voor het recieven van data
while (global.is_in_MP){
	var network_id = ds_map_find_value(async_load, "id");
	if server_socket == network_id
    {
    global.type_buffer = ds_map_find_value(async_load, "buffer"); 
    var cmd_type = buffer_read(global.type_buffer, buffer_u16 );
    var inst = ds_map_find_value(socket_list, sock );
    switch (cmd_type)
        {
        case 2:
			//Tower placement
			instance_create_depth(tdata[0], tdata[1], tdata[2], tdata[3]);
            break;
        //etc...
        }
    }
	
}
