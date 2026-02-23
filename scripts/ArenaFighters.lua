--[[

// -------------------------------------------------
// Functions for fighting in an arena
// -------------------------------------------------

	Available for both Gladiators and ArenaAnimals
	{ "incFightPosition",	
	{ "otherFighterReady",	
	{ "finishSpectacle",
	
--]]


--
-- Arena Fighting
-- Set any Default fights here
-- default scripts to run if specific fight not found
-- *Before* Specific Fights are Defaulted
--

--------------------------------------------------------------------------------------------------
--
--	All fight functions are set up with 2 character names with a l or w in the middle.
--	The w or l stands for win or lose and the first character name is the actual unit's script.
--
--	For example, Gladiator_w_Lion would be the gladiators script, playing an animation where he kills a lion.
--	Lion_l_Gladiator would be the same fight, but the Lions script, where it's killed by the Gladiator.
--
--------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------
--
--	Gladiator_w_Gladiator
--
--	The winning gladiator
--
--	This is used for most gladiator vs. gladiators fights (All gladiators with swords)
--
--	There are specific fights at the end of the script for the Retrias, because he uses a trident
--
--------------------------------------------------------------------------------------------------

function Gladiator_w_Gladiator( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Win_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_WIN_GLAD" );
			actor:playSound( "FX_GLAD_SHIELD1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_SHIELD2" );
			actor:playSound( "FX_GLAD_SWIPE2" );
			actor:playSound( "FX_GLAD_SHIELD3" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_SHIELD4" );
			actor:playSound( "FX_GLAD_SHIELD5" );
			actor:playSound( "FX_GLAD_SWIPE4" );
			actor:playSound( "FX_GLAD_KILL" );
			actor:playSound( "FX_GLAD_FALL" );
			actor:playSound( "FX_GLAD_DIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT4" );
			actor:playSound( "FX_GLAD_SCUFF4" );
			actor:playSound( "FX_GLAD_CROWD_01" );
			actor:playSound( "FX_GLAD_CROWD_02" );
			actor:playSound( "FX_GLAD_CROWD_03" );

		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "Win_End0" );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end

	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	Gladiator_l_Gladiator
--
--	The losing gladiator
--
--	This is used for most gladiator vs. gladiators fights (All gladiators with swords)
--
--	There are specific fights at the end of the script for the Retrias, because he uses a trident
--------------------------------------------------------------------------------------------------


function Gladiator_l_Gladiator( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Lose_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_LOSE_GLAD" );
			actor:playSound( "FX_GLAD_SHIELD1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_SHIELD2" );
			actor:playSound( "FX_GLAD_SWIPE2" );
			actor:playSound( "FX_GLAD_SHIELD3" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_SHIELD4" );
			actor:playSound( "FX_GLAD_SHIELD5" );
			actor:playSound( "FX_GLAD_SWIPE4" );
			actor:playSound( "FX_GLAD_KILL" );
			actor:playSound( "FX_GLAD_FALL" );
			actor:playSound( "FX_GLAD_DIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT4" );
			actor:playSound( "FX_GLAD_SCUFF4" );
			actor:playSound( "FX_GLAD_CROWD_01" );
			actor:playSound( "FX_GLAD_CROWD_02" );
			actor:playSound( "FX_GLAD_CROWD_03" );

		end
		
	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
	
	end

	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	Gladiator_w_ArenaAnimal.
--
--	This is the Gladiator vs. Lion or Leopard animation, It's the winning gladiator animation
--
--------------------------------------------------------------------------------------------------

function Gladiator_w_ArenaAnimal( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepGlad_Lose_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_WIN_CAT" );
			actor:playSound( "FX_GLAD_LIONSWIPE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE2" );
			actor:playSound( "FX_GLAD_KILL2" );
			actor:playSound( "FX_GLAD_FALL2" );
			actor:playSound( "FX_GLAD_LIONDIE" );
			actor:playSound( "FX_GLAD_LIONROAR2" );
			actor:playSound( "FX_GLAD_GRUNT5" );
			actor:playSound( "FX_GLAD_GRUNT6" );
			actor:playSound( "FX_GLAD_SCUFF1" );
			actor:playSound( "FX_GLAD_SCUFF2" );
			actor:playSound( "FX_GLAD_CROWD_04" );
			actor:playSound( "FX_GLAD_CROWD_05" );
			actor:playSound( "FX_GLAD_CROWD_09" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "LepGlad_Lose_End0" );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end

	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	Gladiator_l_ArenaAnimal.
--
--	This is the Gladiator vs. Lion or Leopard animation, It's the losing gladiator animation
--
--------------------------------------------------------------------------------------------------

function Gladiator_l_ArenaAnimal( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepGlad_Lose_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_LOSE_CAT" );
			actor:playSound( "FX_GLAD_LIONSWIPE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE2" );
			actor:playSound( "FX_GLAD_LIONKILL" );
			actor:playSound( "FX_GLAD_FALL2" );
			actor:playSound( "FX_GLAD_DIE2" );
			actor:playSound( "FX_GLAD_LIONROAR2" );
			actor:playSound( "FX_GLAD_LIONROAR3" );
			actor:playSound( "FX_GLAD_GRUNT5" );
			actor:playSound( "FX_GLAD_GRUNT6" );
			actor:playSound( "FX_GLAD_SCUFF1" );
			actor:playSound( "FX_GLAD_SCUFF2" );
			actor:playSound( "FX_GLAD_CROWD_04" );
			actor:playSound( "FX_GLAD_CROWD_05" );
			actor:playSound( "FX_GLAD_CROWD_09" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
	
	end

	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	ArenaAnimal_w_Gladiator.
--
--	This is the Lion or Leopard vs. Gladiator animation, It's the winning Cat animation
--
--------------------------------------------------------------------------------------------------

function ArenaAnimal_w_Gladiator( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepGlad_Win_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:setToNode( "Node_Fight0" );
			actor:playOneShotAnim( "ATTACK" );
			actor:playSound( "FX_GLAD_LIONSWIPE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE2" );
			actor:playSound( "FX_GLAD_LIONKILL" );
			actor:playSound( "FX_GLAD_FALL2" );
			actor:playSound( "FX_GLAD_DIE2" );
			actor:playSound( "FX_GLAD_LIONROAR2" );
			actor:playSound( "FX_GLAD_LIONROAR3" );
			actor:playSound( "FX_GLAD_GRUNT5" );
			actor:playSound( "FX_GLAD_GRUNT6" );
			actor:playSound( "FX_GLAD_SCUFF1" );
			actor:playSound( "FX_GLAD_SCUFF2" );
			actor:playSound( "FX_GLAD_CROWD_04" );
			actor:playSound( "FX_GLAD_CROWD_05" );
			actor:playSound( "FX_GLAD_CROWD_09" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "LepGlad_Win_End0" );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end
	
	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	ArenaAnimal_l_Gladiator.
--
--	This is the Lion or Leopard vs. Gladiator animation, It's the losing Cat animation
--
--------------------------------------------------------------------------------------------------
function ArenaAnimal_l_Gladiator( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepGlad_Win_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:setToNode( "Node_Fight0" );
			actor:playOneShotAnim( "DIE HIT" );
			actor:playSound( "FX_GLAD_LIONSWIPE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE1" );
			actor:playSound( "FX_GLAD_LIONPOUNCE2" );
			actor:playSound( "FX_GLAD_KILL2" );
			actor:playSound( "FX_GLAD_FALL2" );
			actor:playSound( "FX_GLAD_LIONDIE" );
			actor:playSound( "FX_GLAD_LIONROAR2" );
			actor:playSound( "FX_GLAD_GRUNT5" );
			actor:playSound( "FX_GLAD_GRUNT6" );
			actor:playSound( "FX_GLAD_SCUFF1" );
			actor:playSound( "FX_GLAD_SCUFF2" );
			actor:playSound( "FX_GLAD_CROWD_04" );
			actor:playSound( "FX_GLAD_CROWD_05" );
			actor:playSound( "FX_GLAD_CROWD_09" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
	
	end

	return 0;
	
end





--------------------------------------------------------------------------------------------------
--
--	ArenaAnimal_w_ArenaAnimal.
--
--	This script shouldn't be used, it's just left in in case or a code error
--
--------------------------------------------------------------------------------------------------
function ArenaAnimal_w_ArenaAnimal( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepGlad_Win_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace with specific anims when ready
			actor:finishSpectacle();
			actor:setWaitingToDie();
			return 1;
			
		end
				
	end
	
	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	ArenaAnimal_l_ArenaAnimal.
--
--	This script shouldn't be used, it's just left in in case or a code error
--
--------------------------------------------------------------------------------------------------
function ArenaAnimal_l_ArenaAnimal( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepGlad_Lose_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace with specific anims when ready
			actor:finishSpectacle();
			actor:setWaitingToDie();
			return 1;
			
		end
				
	end
	
	return 0;
	
end



--------------------------------------------------------------------------------------------------
-- The following code just sets up default fights and can be ignored by sound
--------------------------------------------------------------------------------------------------

-- Specific Fights
-- Set any possible fight to the default fights
-- Create in a table so it doesn't clutter the global space
Fights = {};

Gladiators = 
{
"Murmillo",
"Retiarius",
"Thracian",
}

ArenaAnimals = 
{
"LionColiseum",
"Crocodile",
"Ostrich",
"Leopard",
"Giraffe",
"Elephant",
}

-- All Gladiator default fights
for i,element in ipairs(Gladiators) do

	for j,gladiator in ipairs(Gladiators) do
		Fights[ element .. "_w_" .. gladiator ] = Gladiator_w_Gladiator;
		Fights[ element .. "_l_" .. gladiator ] = Gladiator_l_Gladiator;
	end
	
	for k,animal in ipairs(ArenaAnimals) do
		Fights[ element .. "_w_" .. animal ] = Gladiator_w_ArenaAnimal;
		Fights[ element .. "_l_" .. animal ] = Gladiator_l_ArenaAnimal;
	end
	
end


-- All ArenaAnimal default fights
for i,element in ipairs(ArenaAnimals) do

	for j,gladiator in ipairs(Gladiators) do
		Fights[ element .. "_w_" .. gladiator ] = ArenaAnimal_w_Gladiator;
		Fights[ element .. "_l_" .. gladiator ] = ArenaAnimal_l_Gladiator;
	end
	
	for k,animal in ipairs(ArenaAnimals) do
		Fights[ element .. "_w_" .. animal ] = ArenaAnimal_w_ArenaAnimal;
		Fights[ element .. "_l_" .. animal ] = ArenaAnimal_l_ArenaAnimal;
	end
	
end

--------------------------------------------------------------------------------------------------
-- End of the default setup code 
--------------------------------------------------------------------------------------------------

--
-- Overwrite any default fights with specific fights here
-- *Prefix functions with     Fights.      since functions are contained in a table
--


--------------------------------------------------------------------------------------------------
--
--	LionColiseum_w_Elephant.
--
--	This is the Lion or Leopard vs. Elephant animation, It's the winning Cat animation
--
--------------------------------------------------------------------------------------------------
function Fights.LionColiseum_w_Elephant( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Lion_Wait" );
		
	elseif( phase == 1 ) then
	
		action:nextPhase();
		-- clone 2 more lions like me
		-- make sure nextPhase is called before this to clone correct phase
		actor:cloneLions( 2 );
		
	elseif( phase == 2 ) then
			
		nodeName = string.format( "Lion_Start%d", actor:getLionIndex() );
		actor:GoTempNode( nodeName );
	
	elseif( phase == 3 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 4 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:setToNode( "Node_Fight0" );
			
			--animName = string.format( "ELEPHANT%d", actor:getLionIndex() + 1 );
			--actor:playOneShotAnim( animName );
			
			if( actor:getLionIndex() == 0 ) then
			
				actor:playOneShotAnim( "ELEPHANT1" );
				actor:playSound( "FX_LION1_ATTACK1" );
				actor:playSound( "FX__LION1_SCUFFLE" );
				actor:playSound( "FX_LION1_ATTACK2" );
				actor:playSound( "FX_LION_STEPS_01" );
				actor:playSound( "FX_LION_STEPS_02" );
				actor:playSound( "FX_LION_STEPS_03" );
				actor:playSound( "FX_LION_STEPS_04" );
				actor:playSound( "FX_LION_STEPS_05" );
				actor:playSound( "FX_LION_HOPOFF" );

			elseif( actor:getLionIndex() == 1 ) then
			
				actor:playOneShotAnim( "ELEPHANT2" );
				actor:playSound( "FX_LION2_ATTACK1" );
				actor:playSound( "FX_LION2_WINCE" );
				actor:playSound( "FX_LION2_SCUFFLE" );
				actor:playSound( "FX_LION2_ATTACK2" );

			else
			
				actor:playOneShotAnim( "ELEPHANT3" );
				actor:playSound( "FX_LION3_ATTACK" );
				actor:playSound( "FX_LION3_WINCE" );
				actor:playSound( "FX_LION3_SCUFFLE" );
				actor:playSound( "FX_LION3_DIE" );

			end
			
		end
		
	elseif( phase == 5 ) then
	
		index = actor:getLionIndex();
		
		-- third (index 2) lion dies
		if( index == 2 ) then
		
			actor:finishSpectacle();
			actor:setWaitingToDie();
			return 1;
				
		end
		
		-- pop to start node until we have an end node
		nodeName = string.format( "Lion_End%d"--[["Lion_End%d"--]], index );
		actor:setToNode( nodeName );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 6 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end
	
	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	Elephant_l_LionColiseum.
--
--	This is the Lion or Leopard vs. Elephant animation, It's the losing Elephant animation
--
--------------------------------------------------------------------------------------------------
function Fights.Elephant_l_LionColiseum( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Elephant_Start" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:setToNode( "Node_Fight0" );
			actor:playOneShotAnim( "ATTACK" );
			actor:playSound( "FX_ELEPH_ATTACK" );
			actor:playSound( "FX_ELEPH_TRUMP1" );
			actor:playSound( "FX_ELEPH_TRUMP2" );
			actor:playSound( "FX_ELEPH_TRUMP3" );
			actor:playSound( "FX_ELEPH_TRUMP4" );
			actor:playSound( "FX_ELEPH_TRUMP5" );
			actor:playSound( "FX_ELEPH_IMPACT1" );
			actor:playSound( "FX_ELEPH_IMPACT2" );
			actor:playSound( "FX_ELEPH_DIE1" );
			actor:playSound( "FX_ELEPH_DIE2" );
			actor:playSound( "FX_ELEPH_FALL" );
			actor:playSound( "FX_ELEPH_SCUFFLE1" );
			actor:playSound( "FX_ELEPH_SCUFFLE2" );
			actor:playSound( "FX_ELEPH_SCUFFLE3" );
			actor:playSound( "FX_ELEPH_LANDING" );
			actor:playSound( "FX_ELEPH_BIGSTEP_01" );
			actor:playSound( "FX_CROWD_01" );
			actor:playSound( "FX_CROWD_02" );
			actor:playSound( "FX_CROWD_03" );
			actor:playSound( "FX_CROWD_04" );
			actor:playSound( "FX_CROWD_05" );
			actor:playSound( "FX_CROWD_06" );
			
		end
		
	elseif( phase == 3 ) then
	
		-- replace with specific anims when ready
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
				
	end
	
	return 0;
	
end

--------------------------------------------------------------------------------------------------
--
--	Leopard_w_Elephant & Elephant_l_Leopard
--
--	This simply sets up the Leopard to use the same animations as the Lions
--
--------------------------------------------------------------------------------------------------
Fights.Leopard_w_Elephant = Fights.LionColiseum_w_Elephant;
Fights.Elephant_l_Leopard = Fights.Elephant_l_LionColiseum;


--------------------------------------------------------------------------------------------------
--
--	Leopard_w_Giraffe
--
--	Leopard kills a Giraffe
--------------------------------------------------------------------------------------------------

function Fights.Leopard_w_Giraffe( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepVGir_Lep_Start" );
		
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:playOneShotAnim( "ANIM1" );
			actor:playSound( "FX_GLAD_LEOSWIPE" );
			actor:playSound( "FX_GLAD_LEOPOUNCE" );
			actor:playSound( "FX_GLAD_LEOKILL" );
			actor:playSound( "FX_GLAD_GIRAFFEFALL" );
			actor:playSound( "FX_GLAD_GIRAFFEDIE" );
			actor:playSound( "FX_GLAD_LEOROAR1" );
			actor:playSound( "FX_GLAD_LEOROAR2" );
			actor:playSound( "FX_GLAD_LEOROAR3" );
			actor:playSound( "FX_GLAD_GIRAFFERUN" );
			actor:playSound( "FX_GLAD_GIRAFFERUN2" );
			actor:playSound( "FX_GLAD_GIRAFFEPOUNCE" );
			actor:playSound( "FX_GLAD_SCUFF5" );
			actor:playSound( "FX_GLAD_LEOROAR4" );
			actor:playSound( "FX_GLAD_LEORUN" );
			actor:playSound( "FX_GLAD_CROWD_04" );
			actor:playSound( "FX_GLAD_CROWD_05" );
			actor:playSound( "FX_GLAD_CROWD_09" );

		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "LepVGir_Lep_END");
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end
	
	return 0;
	
end



--------------------------------------------------------------------------------------------------
--
--	Giraffe_l_Leopard
--
--	Giraffe is killed by leopard
--------------------------------------------------------------------------------------------------
function Fights.Giraffe_l_Leopard( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepVGir_Gir_Start" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
		--	actor:setToNode( "Node_Fight0" );
			actor:playOneShotAnim( "ANIM1" );
		
		--	actor:GoTempNode( "LepVGir_Gir1" );

		end
	

	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
				
	end
	
	return 0;
	
end



--------------------------------------------------------------------------------------------------
--
--	Leopard_l_Giraffe & LionColesium_w_Giraffe
--
--	Giraffe kills a leopard/Lion dosn't exist, so make it repeat the Leopard kills giraffe
--------------------------------------------------------------------------------------------------
Fights.Leopard_l_Giraffe = Fights.Leopard_w_Giraffe;

Fights.LionColesium_w_Giraffe = Fights.Leopard_w_Giraffe;

--------------------------------------------------------------------------------------------------
--
--	Giraffe_w_Leopard & Giraffe_l_LionColesium
--
--	Giraffe kills a leopard/lion dosn't exist, so make it repeat the Leopard kills giraffe
--------------------------------------------------------------------------------------------------
Fights.Giraffe_w_Leopard = Fights.Giraffe_l_Leopard;

Fights.Giraffe_l_LionColesium = Fights.Giraffe_l_Leopard;


-----------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------
--
--	Ostrich_W_Ostrich
--
--	Ostrich kills another Ostrich
--------------------------------------------------------------------------------------------------
function Fights.Ostrich_w_Ostrich( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LionLEleStart" );
		
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
		--	actor:setToNode( "Node_Fight0" );
		--	actor:playOneShotAnim( "ATTACK" );

			-- Set to run
		--	actor:setRunning(true);

			actor:playOneShotAnim( "ANIM1" );
			actor:playSound( "FX_GLAD_OSTRICH1" );
			actor:playSound( "FX_GLAD_OSTRICH2" );
			actor:playSound( "FX_GLAD_OSTRICH3" );
			actor:playSound( "FX_GLAD_OSTRICH4" );
			actor:playSound( "FX_GLAD_OSTRICH5" );
			actor:playSound( "FX_GLAD_OSTRICH6" );
			actor:playSound( "FX_GLAD_OSTRICHKILL" );
			actor:playSound( "FX_GLAD_OSTRICHFALL" );
			actor:playSound( "FX_GLAD_OSTRICHDIE" );
			actor:playSound( "FX_GLAD_OSTRICHRUN1" );
			actor:playSound( "FX_GLAD_OSTRICHRUN2" );
			actor:playSound( "FX_GLAD_OSTRICHRUN3" );
			actor:playSound( "FX_GLAD_SCUFF1" );
			actor:playSound( "FX_GLAD_SCUFF2" );
			actor:playSound( "FX_GLAD_CROWD_06" );
			actor:playSound( "FX_GLAD_CROWD_07" );
			actor:playSound( "FX_GLAD_CROWD_08" );

		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "OstFight_END");
		actor:setWalkAnim();
	
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end
	
	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	Ostrich_l_Ostrich
--
--	Ostrich is killed by another Ostrich
--------------------------------------------------------------------------------------------------
function Fights.Ostrich_l_Ostrich( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "LepVGir_Lep_Start" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
		--	actor:setToNode( "Node_Fight0" );
			actor:playOneShotAnim( "ANIM2" );
		
		--	actor:GoTempNode( "LepVGir_Gir1" );

		end
	

	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
				
	end
	
	return 0;
	
end




--------------------------------------------------------------------------------------------------
--
--	Retiarius_w_Murmillo
--
--	Retiarius kills a Murmillo
--------------------------------------------------------------------------------------------------

function Fights.Retiarius_w_Murmillo( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Win_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_RET_W_MUR" );
			actor:playSound( "FX_GLAD_TRITON1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_SHIELD2" );
			actor:playSound( "FX_GLAD_SWIPE2" );
			actor:playSound( "FX_GLAD_TRITON3" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_SHIELD4" );
			actor:playSound( "FX_GLAD_TRITON5" );
			actor:playSound( "FX_GLAD_SWIPE4" );
			actor:playSound( "FX_GLAD_KILL" );
			actor:playSound( "FX_GLAD_FALL" );
			actor:playSound( "FX_GLAD_DIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT4" );
			actor:playSound( "FX_GLAD_SCUFF4" );
			actor:playSound( "FX_GLAD_SCUFF5" );
			actor:playSound( "FX_GLAD_SCUFF6" );
			actor:playSound( "FX_GLAD_CROWD_01" );
			actor:playSound( "FX_GLAD_CROWD_02" );
			actor:playSound( "FX_GLAD_CROWD_03" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "Win_End0" );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end

	return 0;
	
end


--------------------------------------------------------------------------------------------------
--
--	Murmillo_l_Retiarius
--
--	Murmillo is killed by a Retiarius
--------------------------------------------------------------------------------------------------
function Fights.Murmillo_l_Retiarius( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Lose_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_MUR_L_RET" );
			actor:playSound( "FX_GLAD_TRITON1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_SHIELD2" );
			actor:playSound( "FX_GLAD_SWIPE2" );
			actor:playSound( "FX_GLAD_TRITON3" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_SHIELD4" );
			actor:playSound( "FX_GLAD_TRITON5" );
			actor:playSound( "FX_GLAD_SWIPE4" );
			actor:playSound( "FX_GLAD_KILL" );
			actor:playSound( "FX_GLAD_FALL" );
			actor:playSound( "FX_GLAD_DIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT4" );
			actor:playSound( "FX_GLAD_SCUFF4" );
			actor:playSound( "FX_GLAD_SCUFF5" );
			actor:playSound( "FX_GLAD_SCUFF6" );
			actor:playSound( "FX_GLAD_CROWD_01" );
			actor:playSound( "FX_GLAD_CROWD_02" );
			actor:playSound( "FX_GLAD_CROWD_03" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
	
	end

	return 0;
	
end



--------------------------------------------------------------------------------------------------
--
--	Murmillo_w_Retiarius
--
--	Murmillo kills a Retiarius
--------------------------------------------------------------------------------------------------
function Fights.Murmillo_w_Retiarius( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Win_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_MUR_W_RET" );
			actor:playSound( "FX_GLAD_SHIELD1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_TRITON2" );
			actor:playSound( "FX_GLAD_SWIPE2" );
			actor:playSound( "FX_GLAD_SHIELD3" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_TRITON4" );
			actor:playSound( "FX_GLAD_SHIELD5" );
			actor:playSound( "FX_GLAD_SWIPE4" );
			actor:playSound( "FX_GLAD_KILL" );
			actor:playSound( "FX_GLAD_FALL" );
			actor:playSound( "FX_GLAD_DIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT4" );
			actor:playSound( "FX_GLAD_SCUFF4" );
			actor:playSound( "FX_GLAD_SCUFF5" );
			actor:playSound( "FX_GLAD_SCUFF6" );
			actor:playSound( "FX_GLAD_CROWD_01" );
			actor:playSound( "FX_GLAD_CROWD_02" );
			actor:playSound( "FX_GLAD_CROWD_03" );

		end

	elseif( phase == 3 ) then

		actor:setToNode( "Win_End0" );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end

	return 0;
	
end



--------------------------------------------------------------------------------------------------
--
--	Retiarius_l_Murmillo
--
--	Retiarius is killed by a Murmillo
--------------------------------------------------------------------------------------------------
function Fights.Retiarius_l_Murmillo( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Lose_Start0" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:playOneShotAnim( "GLAD_RET_L_MUR" );
			actor:playSound( "FX_GLAD_SHIELD1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_TRITON2" );
			actor:playSound( "FX_GLAD_SWIPE2" );
			actor:playSound( "FX_GLAD_SHIELD3" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_TRITON4" );
			actor:playSound( "FX_GLAD_SHIELD5" );
			actor:playSound( "FX_GLAD_SWIPE4" );
			actor:playSound( "FX_GLAD_KILL" );
			actor:playSound( "FX_GLAD_FALL" );
			actor:playSound( "FX_GLAD_DIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT4" );
			actor:playSound( "FX_GLAD_SCUFF4" );
			actor:playSound( "FX_GLAD_SCUFF5" );
			actor:playSound( "FX_GLAD_SCUFF6" );
			actor:playSound( "FX_GLAD_CROWD_01" );
			actor:playSound( "FX_GLAD_CROWD_02" );
			actor:playSound( "FX_GLAD_CROWD_03" );
			
		end
		
	elseif( phase == 3 ) then
	
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
	
	end

	return 0;
	
end

--------------------------------------------------------------------------------------------------
--
--	Thracian_w_Retiarius
--
--	Thracian kills a Retiarius - Same animation as Murmillo kills a Retiarius, so point the new function to the old one.
--------------------------------------------------------------------------------------------------

Fights.Thracian_w_Retiarius = Fights.Murmillo_w_Retiarius;




--------------------------------------------------------------------------------------------------
--
--	Retiarius_l_Thracian
--
--	Retiarius is killed by a Thracian - Same animation as Retiarius killed by a Murmillo , so point the new function to the old one.
--------------------------------------------------------------------------------------------------

Fights.Retiarius_l_Thracian = Fights.Retiarius_l_Murmillo;





--------------------------------------------------------------------------------------------------
--
--	Retiarius_w_Thracian
--
--	Retiarius kills a Thracian - Same animation as before, so point the new function to the old one.
--------------------------------------------------------------------------------------------------

Fights.Retiarius_w_Thracian = Fights.Retiarius_w_Murmillo;




--------------------------------------------------------------------------------------------------
--
--	Thracian_l_Retiarius
--
--	Thracian is killed by a Retiarius - Same animation as before , so point the new function to the old one.
--------------------------------------------------------------------------------------------------

Fights.Thracian_l_Retiarius = Fights.Murmillo_l_Retiarius;







--------------------------------------------------------------------------------------------------
--
--	Retiarius_w_Crocodile
--
--	Retiarius kills a croc
--------------------------------------------------------------------------------------------------
function Fights.Retiarius_w_Crocodile( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Glad_KillCroc_Start" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			-- replace me
			actor:playOneShotAnim( "GLAD_KILL_CROC" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_KILL3" );
			actor:playSound( "FX_GLAD_FALL3" );
			actor:playSound( "FX_GLAD_CROCDIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT5" );
			actor:playSound( "FX_GLAD_GRUNT3" );
			actor:playSound( "FX_GLAD_CROCBOUNCE1" );
			actor:playSound( "FX_GLAD_CROCBOUNCE2" );
			actor:playSound( "FX_GLAD_CROCSLIDE" );
			actor:playSound( "FX_GLAD_CROCSNAP1" );
			actor:playSound( "FX_GLAD_CROCSNAP2" );
			actor:playSound( "FX_GLAD_CROCHISS1" );
			actor:playSound( "FX_GLAD_CROCHISS2" );
			actor:playSound( "FX_GLAD_CROWD_06" );
			actor:playSound( "FX_GLAD_CROWD_09" );

		end
		
	elseif( phase == 3 ) then
	
		actor:setToNode( "Glad_KillCroc_END" );
		actor:setWalkAnim();
		actor:GoTempNode( "disappear" );
		
	elseif( phase == 4 ) then
	
		actor:finishSpectacle();
		actor:setEntityDying();
		return 1;
				
	end

	return 0;
	
end	


--------------------------------------------------------------------------------------------------
--
--	Crocodile_l_Retiarius
--
--	Croc, killed by a Retiarius
--------------------------------------------------------------------------------------------------
function Fights.Crocodile_l_Retiarius( action, actor )

	phase = action:phase();
	
	if( phase == 0 ) then
	
		actor:GoTempNode( "Croc_KillCroc_Start" );
	
	elseif( phase == 1 ) then
	
		-- increment node state
		actor:incFightPosition();
		actor:setIdleAnim();
		action:nextPhase();
		
	elseif( phase == 2 ) then
	
		-- wait until other fighter in position
		if( actor:otherFighterReady() ) then
		
			actor:playOneShotAnim( "ANIM1" );
			actor:playSound( "FX_GLAD_SWIPE1" );
			actor:playSound( "FX_GLAD_SWIPE3" );
			actor:playSound( "FX_GLAD_KILL3" );
			actor:playSound( "FX_GLAD_FALL3" );
			actor:playSound( "FX_GLAD_CROCDIE" );
			actor:playSound( "FX_GLAD_GRUNT1" );
			actor:playSound( "FX_GLAD_GRUNT2" );
			actor:playSound( "FX_GLAD_GRUNT5" );
			actor:playSound( "FX_GLAD_GRUNT3" );
			actor:playSound( "FX_GLAD_CROCBOUNCE1" );
			actor:playSound( "FX_GLAD_CROCBOUNCE2" );
			actor:playSound( "FX_GLAD_CROCSLIDE" );
			actor:playSound( "FX_GLAD_CROCSNAP1" );
			actor:playSound( "FX_GLAD_CROCSNAP2" );
			actor:playSound( "FX_GLAD_CROCHISS1" );
			actor:playSound( "FX_GLAD_CROCHISS2" );
			actor:playSound( "FX_GLAD_CROWD_06" );
			actor:playSound( "FX_GLAD_CROWD_09" );
			
		end
		
	elseif( phase == 3 ) then
	
--		actor:setIdleAnim();
		actor:finishSpectacle();
		actor:setWaitingToDie();
		return 1;
	
	end

	return 0;
	
end

--------------------------------------------------------------------------------------------------
--
--	Retiarius_l_Crocodile
--
--	Retiarius loses to a croc. This fight doesn't exists so change it to Retiarius kills a croc
--------------------------------------------------------------------------------------------------
Fights.Retiarius_l_Crocodile = Fights.Retiarius_w_Crocodile

--------------------------------------------------------------------------------------------------
--
--	Crocodile_w_Retiarius
--
--	Croc wins against Retiarius. This fight doesn't exists so change it to Croc, killed by a Retiarius
--------------------------------------------------------------------------------------------------
Fights.Crocodile_w_Retiarius = Fights.Crocodile_l_Retiarius

Fights.Murmillo_w_Crocodile = Fights.Retiarius_w_Crocodile
Fights.Thracian_w_Crocodile = Fights.Retiarius_w_Crocodile

Fights.Crocodile_l_Murmillo = Fights.Crocodile_l_Retiarius
Fights.Crocodile_l_Thracian = Fights.Crocodile_l_Retiarius

