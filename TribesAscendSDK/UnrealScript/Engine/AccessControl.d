module UnrealScript.Engine.AccessControl;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface AccessControl : Info
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) IPPolicies() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 476); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) BannedIDs() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 488); }
			ScriptString ACDescText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 648); }
			ScriptString ACDisplayText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 612); }
			ScriptString GamePassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 600); }
			ScriptString AdminPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
			ScriptClass AdminClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 584); }
			ScriptString IdleKickReason() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 572); }
			ScriptString DefaultKickReason() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 560); }
			ScriptString KickedMsg() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 548); }
			ScriptString SessionBanned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 536); }
			ScriptString NeedPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
			ScriptString WrongPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 512); }
			ScriptString IPBanned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 500); }
		}
		bool bDontAddDefaultAdmin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 684) & 0x1) != 0; }
		bool bDontAddDefaultAdmin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 684) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 684) &= ~0x1; } return val; }
	}
final:
	bool IsAdmin(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5697], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetAdminPassword(ScriptString P)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5702], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetGamePassword(ScriptString P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5705], params.ptr, cast(void*)0);
	}
	bool RequiresPassword()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5707], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Controller GetControllerFromString(ScriptString Target)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5709], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[12];
	}
	void Kick(ScriptString Target)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5720], params.ptr, cast(void*)0);
	}
	void KickBan(ScriptString Target)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5723], params.ptr, cast(void*)0);
	}
	bool ForceKickPlayer(PlayerController C, ScriptString KickReason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		*cast(ScriptString*)&params[4] = KickReason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5733], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool KickPlayer(PlayerController C, ScriptString KickReason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		*cast(ScriptString*)&params[4] = KickReason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5737], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool AdminLogin(PlayerController P, ScriptString Password)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(ScriptString*)&params[4] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5741], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool AdminLogout(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5745], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AdminEntered(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5749], params.ptr, cast(void*)0);
	}
	void AdminExited(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5752], params.ptr, cast(void*)0);
	}
	bool ParseAdminOptions(ScriptString Options)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5755], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ValidLogin(ScriptString UserName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5762], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void PreLogin(ScriptString Options, ScriptString Address, ScriptString* OutError, bool bSpectator)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = Address;
		*cast(ScriptString*)&params[24] = *OutError;
		*cast(bool*)&params[36] = bSpectator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5766], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[24];
	}
	bool CheckIPPolicy(ScriptString Address)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Address;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5775], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IsIDBanned(OnlineSubsystem.UniqueNetId* NetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *NetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5784], params.ptr, cast(void*)0);
		*NetId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
}
