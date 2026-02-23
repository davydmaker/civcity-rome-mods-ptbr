--[[

// -------------------------------------------------
// Available Citizen Bindings
// -------------------------------------------------


--]]


function Sculptor_MakeSculpture( action, actor )

	phase = action:phase();

	if( phase == 0 ) then

		actor:GoWorkNode( "storage" );

	elseif( phase == 1 ) then

		actor:pickupAction( 0, "STONE", 1 );
		actor:playSound( "FX_SCULPT_STONE_UP" );
		actor:playSound( "FX_SCULPT_STONE_DN" );
		actor:playSound( "FX_SCULPT_SHUFFLE" );
		actor:playSound( "FX_SCULPT_GRUNT" );
	
	elseif( phase == 2 ) then

		s = "work" .. actor:getWorkNode();
		actor:GoWorkNode( s );

	elseif( phase == 3 ) then

		actor:playOneShotAnim( "MAKE_TOGA" );
		actor:playSound( "FX_SCULPT_CARVE1" );
		actor:playSound( "FX_SCULPT_CARVE2" );
		actor:playSound( "FX_SCULPT_CARVE3" );
		actor:playSound( "FX_SCULPT_CARVE4" );

	elseif( phase == 4 ) then
		
		actor:setHasCommodity("SCULPTURESMALL");

		if( actor:needDropOff() ) then

			actor:setTempWarehouse();
			actor:dropOff();

		else

			actor:addCommodityCount( 1 ,"SCULPTURESMALL");
			actor:playSound( "FX_SCULPT_COMPLETION" );
			actor:setHasCommodity( "NONE" );
			return 1;

		end

	elseif( phase == 5 ) then

		return 1;
		
	end

	return 0;
	
end