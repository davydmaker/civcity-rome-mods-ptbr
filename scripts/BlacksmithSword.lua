--[[

// -------------------------------------------------
// Available BlacksmithSword Bindings
// -------------------------------------------------


--]]


-- MakeSword
function BlacksmithSword.MakeSword( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then

		actor:GoWorkNode( Node( BlacksmithSword, "furnace", "WeaponsArmourer" ) );

	elseif( phase == 1 ) then

		actor:subCommodityIn( 1 );
		actor:addWorkBuildingParticle( 7, "NodeChimSmoke" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD1" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_SHUFFLE1" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_IN" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_BOIL1" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_BOIL2" ) );

	elseif( phase == 2 ) then

		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD2" ) );
		
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_BOIL3" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_BOIL4" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_TONG1" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_TONG2" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_IRON_ANVIL" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_SHUFFLE2" ) );

	elseif( phase == 3 ) then

		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD3" ) );
		actor:removeWorkBuildingParticle( 7, "NodeChimSmoke" );

	elseif( phase == 4 ) then
		
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD4" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_HAMMER1" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_HAMMER2" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_HAMMER3" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_HAMMER4" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_HAMMER_DN" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_STEAM" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_COMPLETION" ) );

	elseif( phase == 5 ) then

		
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5" ) );

	elseif( phase == 6 ) then

		actor:addWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5B" ) );



	
	
	elseif( phase == 7 ) then

		actor:removeWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5" ) );

	elseif( phase == 8 ) then

		actor:addWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5B" ) );



	elseif( phase == 9 ) then

		actor:removeWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5" ) );

	elseif( phase == 10 ) then

		actor:addWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5B" ) );



	elseif( phase == 11 ) then

		actor:removeWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5" ) );

	elseif( phase == 12 ) then

		actor:addWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD5B" ) );



	elseif( phase == 13 ) then

		actor:removeWorkBuildingParticle( 8, "NodeSparks" );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD6" ) );
		actor:playSound( Sound( BlacksmithSword, "FX_SWDMKR_SHUFFLE2" ) );


	elseif( phase == 14 ) then

		-- Start steam
		actor:addWorkBuildingParticle( 9, "Node_Obj_Water" );

		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_MAKESWORD7" ) );


	elseif( phase == 15 ) then
		
		
		actor:setToNode( "water" );
		
		--Attach the sword to a bone
		actor:addModelBone( Model(BlacksmithSword, "meshes/models/Obj_Sword-02.GR2"), PROP1 );
		--Start the walk animation for the sword prop
		actor:setWalkAnim( Animation( BlacksmithSpear, "ARM_WALKSWORD" ));

		-- Stop steam
		actor:removeWorkBuildingParticle( 9, "Node_Obj_Water" );

		actor:GoWorkNode( Node( BlacksmithSword, "node_commodity", "WeaponsArmourer" ) );

	elseif( phase == 16 ) then

		actor:removeModel( Model(BlacksmithSword, "meshes/models/Obj_Sword-02.GR2") );

		

		actor:setWalkAnim();

		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_DROPSWORD_DO" ) );
		
	elseif( phase == 17 ) then

		actor:addCommodityCount( 1 );
		actor:playOneShotAnim( Animation( BlacksmithSword, "ARM_DROPSWORD_UP" ) );
	
	elseif( phase == 18 ) then

		return 1;
	
	end

	return 0;
	
end


-- Deliver
function BlacksmithSword.Deliver( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then

		actor:GoWorkNode( Node( BlacksmithSword, "node_commodity", "WeaponsArmourer" ) );

	elseif( phase == 1 ) then
		
		--set in code now
		--actor:setAmountToGet(4)

		-- grab from the commodity going out
		actor:pickupAction( 0, Commodities["SWORD"] );

	elseif( phase == 2 ) then

		actor:setHasCommodity( Commodities["SWORD"], actor:getAmountToGet() );
		actor:dropOff();

	elseif( phase == 3 ) then
		
		return 1;
		
	end

	return 0;

--[[	phase = action:phase();
	
--	if( phase == 0 ) then
	
--		actor:GoWorkNode( Node( BlacksmithSword, "storage", "WeaponsArmourer" ) );
	
--	elseif( phase == 1 ) then
	
--		actor:playOneShotAnim( Animation( BlacksmithSword, "GPICKUPLOWDOWN" ) );
		
--	elseif( phase == 2 ) then
		
--		actor:updateDrawCount();
		
		-- 4 breads reserved
--		actor:setHasCommodity( Commodities["SWORD"], 4 );
		
--		actor:playOneShotAnim( Animation( BlacksmithSword, "GPICKUPLOWUP" ) );
		
--	elseif( phase == 3 ) then
		
--		actor:dropOff();
		
--	elseif( phase == 4 ) then
	
--		return 1;
	
--	end
	
--	return 0;
--]]
	
end