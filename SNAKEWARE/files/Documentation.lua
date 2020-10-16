--Lua Documentation

--Colors-- --Vectors--
{
    Color( red, green, blue )
    Vector2( x, y )
    Vector3( x, y, z )
}

--CmdButtons--
{
	"IN_ATTACK"
	"IN_JUMP"
	"IN_DUCK"
	"IN_FORWARD"
	"IN_BACK"
	"IN_USE"
	"IN_MOVELEFT"
	"IN_MOVERIGHT"
	"IN_ATTACK2"
	"IN_SCORE"
	"IN_BULLRUSH"
}

----------Drawing---------

----------Config----------
config.save("config name")								--Save cheat config
config.load("config name")								--Load cheat config

-------entity_list--------
entity_list.GetHighestEntityIndex()						--Index for last entity
entity_list.GetEntityByIndex( entity_index )			--Entity index, use entity_index as index 

-------globalvars--------
globalvars.curtime()
globalvars.framecount()
globalvars.interval_per_tick()
globalvars.realtime()
globalvars.tickcount()

----------client---------
client.RegisterFunction("hookname", calling_function() ) --Call function in hook
--Hooks--
{
   --on_scene_end           -- For example : drawing chams, bullet impacts, esp drawing
   --on_paint               -- For example : drawing indicators, watermarks, other draw func
   --on_create_move         -- For example : Viewangles changing, antiaim, other Miscellaneous funcs
   --on_frame_stage_notify  -- For example : world color modulation, effects, removals, resolver
}
client.RunScript("lua name")                            --Load LUA script by his name in cheat folder
client.ReloadScripts()                                  --Reload all lua, it is important if you are changed script code
client.Refresh()                                        --Refresh cheat folder, to sync all scripts
client.DesyncSwitched()									-- (bool) Is desync switched?
client.DesyncValue()									-- (int ) Get local player desync angle

----------engine---------
engine.ClientCmd("text")
engine.ClientCmdUnrestricted("text")                    --Do csgo command in CMD system
engine.ExecuteClientCmd("text")
engine.GetLocalPlayerIndex()                            --Get entity index for local player (you)
engine.Maxclients()                                     --Get max clients on server
engine.SendPacket()                                     --Sending packet on server UPD: its using for desync/fakelag functions in cheat
engine.GetPlayerById( userid )                          --Find player by his unique index on server
engine.GetPlayerInfo( userid )                          --Get CSGO player info
engine.GetViewAngles()                                  --Get local player viewangles
engine.SetViewAngles( Angles )                          --Set new local Viewangles/ use angles to set ur angle
engine.LocalPlayer()							
engine.IsConnected()                                    --Is local player connected to the server?
engine.IsInGame()                                       --Is local player in game?
engine.GetScreenSize( x,y )                             --Get csgo window size and writing info in variables(x,y)
engine.GetServerTick()                                  --Get Server tick
engine.TakeScreenShot("screenshot name")                --Do valve screenshot and save it by custom name

----------input----------
input.IsHoldingKey( key id )                            --Is key holding right now?
input.IsToogled( key id )                               --Is key toogled?

---------render---------
render.DrawLine(x, y, x2, y2 )							--Render default line from pos1, to pos 2
render.SetBrushColor(red, green, blue, alpha )			--Set drawing color
render.DrawFilledRect(x, y, x1, y1 )					--Draw Filled Rectangle
render.DrawRect(x, y, x1, y1 )							--Draw Rectangle
render.DrawCircle(x, y, radius, segments )				--Draw Circle
render.GetScreenX()										--Return CSGO screen size by (x) in vector
render.GetScreenY()										--Return CSGO screen size by (y) in vector
render.NewFont("font name", sizex, sizey, blur, flags )	--Create new font for text render
render.PushFont( font )									--Set new font to text render
render.SetTextBrushColor(red, green, blue, alpha )		--Set drawing color for text
render.DrawText("text", x, y)							--Draw text
render.GetCursorPos()									--Get CSGO window cursor position

----------math-----------
math.CalculateAngle( begin_vector, distance vector )    --Calculate angle by src and distance point
math.ClampValue(variable, minimal_clamp, maximal_clamp )--The function does not allow the value to go beyond the specified limits
math.NormalizeYaw( yaw )                                --Modify yaw to normal return value
math.RandomFloat( min, max )                            --Return random float value
math.RandomInt( min, max )                              --Return random integer value
math.VectorNormalize( Vector )                          --Normalize Vector /// will be updated later
math.WorldToScreen( in__vector, out__vector )           --Transform world vector to window/screen vector
math.FixAngles( vector )                                --Fix angles /// will be updated later
math.Vector_Angles( forward_vector, up_vector,angles )
math.VectorRotate( in_vector, in2_vector )

---------entity---------
entity.IsEnemy( entity )                                --Is entity enemy?
entity.IsDormant( entity )                              --Is entity dormant?
entity.IsAlive( entity )                                --Is entity alive?
entity.GetEntityIndex( entity )                         --Get unique player index
entity.BonePos( entity, bone_id )                       --Get entity bone position, UPD : Use bone_id to find bone
entity.EyePos( entity )                                 --Get entity eye position
entity.IsWeapon( entity )                               --Does entity have weapon?
entity.ActiveWeapon( entity )                           --Get active weapon of entity
entity.GetInaccuracy( entity )                          --Get active weapon inaccuracy  ( also using like hitchance )
entity.GetSpread( entity )                              --Get active weapon spread
entity.GetAbsOrigin( entity )                           --Get entity postition
entity.GetAnimstate( entity )                           --Get entity animation state ( using for animations, resolvers )
entity.IsReloading( entity )                            --Is entity reloading?
entity.AimPunch( entity )                               --Get entity aim punch 
entity.GetHealth( entity )                              --Get entity health value
entity.GetBody( entity )
entity.GetHitboxSet( entity )                           --Get entity hitbox set  /// will be updated later
entity.GetOrigin( entity )                              --Get entity origin
entity.GetAimPunchAngle( entity )                       --Get entity aim punch angle ( using for norecoil )
entity.GetArmorValue( entity )                          --Get entity armor value ( second bar after health in csgo HUD )
entity.CanFire( entity )                                --Can entity shoot?
entity.CanShiftTickBase( entity )                       --Can active weapon shift tickbase ( exploit )  (Using in fastfire exploit, etc)
entity.DuckAmount( entity )
entity.DuckSpeed( entity )
entity.GetFlashDuration( entity )                       --How long player flashed by flashbang grenade
entity.GetCollideable_MAX( entity )                     --Get entity maximal collideable vector (player -  head)
entity.GetCollideable_MIN( entity )                     --Get entity minimal collideable vector (player -  legs)
entity.GetVelocity( entity )                            --Get entity current velocity vector (xyz)
entity.GetVelocitySpeed( entity )                       --Get entity current velocity length (unit)
entity.ZoomLevel( entity )                              --How much scoped entity
entity.HasDefuseKits( entity )                          --Does entity have defuse kits
entity.HasC4( entity )                                  --Does entity have C4
entity.IsScoped( entity )                               --Does entity have Scoped
entity.GetNextAttack( entity )
entity.SimulationTime( entity )
entity.OldSimulationTime( entity )
entity.PlayerName( entity )                             --CSGO Player name in char*
entity.GetShootPos( entity )                            --Entity shoot position
entity.ShotFired( entity )                              --How much shots were did by player
entity.GetTickBase( entity )
entity.GoalFeetYaw( entity )                            
entity.EyeAngles( entity )
entity.m_flCycle( entity )
entity.m_flFeetYawRate( entity )
entity.m_flPlaybackRate( entity )
entity.m_flWeight( entity )
entity.GetSequenceActivity( entity )                    --Check animation layer activity 

-----------cvar----------
cvar.FindVar("ConVar name")                             --Find Convar by his name in valve sdk

----------convar----------
convar.GetInt( convar )                                 --Get integer of convar
convar.GetFloat( convar )                               --Get float of convar
convar.SetInt( convar, new_val )                        --Set integer for convar
convar.SetFloat( convar, new_val )                      --Set float for convar

----------convar----------