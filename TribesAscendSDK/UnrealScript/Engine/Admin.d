module UnrealScript.Engine.Admin;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Admin : PlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Admin")()); }
	private static __gshared Admin mDefaultProperties;
	@property final static Admin DefaultProperties() { mixin(MGDPC!(Admin, "Admin Engine.Default__Admin")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mAdmin;
			ScriptFunction mServerAdmin;
			ScriptFunction mKickBan;
			ScriptFunction mServerKickBan;
			ScriptFunction mKick;
			ScriptFunction mServerKick;
			ScriptFunction mPlayerList;
			ScriptFunction mRestartMap;
			ScriptFunction mServerRestartMap;
			ScriptFunction mSwitch;
			ScriptFunction mServerSwitch;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.Admin.PostBeginPlay")()); }
			ScriptFunction Admin() { mixin(MGF!("mAdmin", "Function Engine.Admin.Admin")()); }
			ScriptFunction ServerAdmin() { mixin(MGF!("mServerAdmin", "Function Engine.Admin.ServerAdmin")()); }
			ScriptFunction KickBan() { mixin(MGF!("mKickBan", "Function Engine.Admin.KickBan")()); }
			ScriptFunction ServerKickBan() { mixin(MGF!("mServerKickBan", "Function Engine.Admin.ServerKickBan")()); }
			ScriptFunction Kick() { mixin(MGF!("mKick", "Function Engine.Admin.Kick")()); }
			ScriptFunction ServerKick() { mixin(MGF!("mServerKick", "Function Engine.Admin.ServerKick")()); }
			ScriptFunction PlayerList() { mixin(MGF!("mPlayerList", "Function Engine.Admin.PlayerList")()); }
			ScriptFunction RestartMap() { mixin(MGF!("mRestartMap", "Function Engine.Admin.RestartMap")()); }
			ScriptFunction ServerRestartMap() { mixin(MGF!("mServerRestartMap", "Function Engine.Admin.ServerRestartMap")()); }
			ScriptFunction Switch() { mixin(MGF!("mSwitch", "Function Engine.Admin.Switch")()); }
			ScriptFunction ServerSwitch() { mixin(MGF!("mServerSwitch", "Function Engine.Admin.ServerSwitch")()); }
		}
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	// WARNING: Function 'Admin' has the same name as a defined type!
	void ServerAdmin(ScriptString CommandLine)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = CommandLine;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdmin, params.ptr, cast(void*)0);
	}
	void KickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickBan, params.ptr, cast(void*)0);
	}
	void ServerKickBan(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerKickBan, params.ptr, cast(void*)0);
	}
	void Kick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.Kick, params.ptr, cast(void*)0);
	}
	void ServerKick(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerKick, params.ptr, cast(void*)0);
	}
	void PlayerList()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayerList, cast(void*)0, cast(void*)0);
	}
	void RestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartMap, cast(void*)0, cast(void*)0);
	}
	void ServerRestartMap()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerRestartMap, cast(void*)0, cast(void*)0);
	}
	void Switch(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.Switch, params.ptr, cast(void*)0);
	}
	void ServerSwitch(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSwitch, params.ptr, cast(void*)0);
	}
}
