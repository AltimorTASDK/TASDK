module UnrealScript.Engine.AccessControl;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface AccessControl : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AccessControl")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsAdmin;
			ScriptFunction mSetAdminPassword;
			ScriptFunction mSetGamePassword;
			ScriptFunction mRequiresPassword;
			ScriptFunction mGetControllerFromString;
			ScriptFunction mKick;
			ScriptFunction mKickBan;
			ScriptFunction mForceKickPlayer;
			ScriptFunction mKickPlayer;
			ScriptFunction mAdminLogin;
			ScriptFunction mAdminLogout;
			ScriptFunction mAdminEntered;
			ScriptFunction mAdminExited;
			ScriptFunction mParseAdminOptions;
			ScriptFunction mValidLogin;
			ScriptFunction mPreLogin;
			ScriptFunction mCheckIPPolicy;
			ScriptFunction mIsIDBanned;
		}
		public @property static final
		{
			ScriptFunction IsAdmin() { return mIsAdmin ? mIsAdmin : (mIsAdmin = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.IsAdmin")); }
			ScriptFunction SetAdminPassword() { return mSetAdminPassword ? mSetAdminPassword : (mSetAdminPassword = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.SetAdminPassword")); }
			ScriptFunction SetGamePassword() { return mSetGamePassword ? mSetGamePassword : (mSetGamePassword = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.SetGamePassword")); }
			ScriptFunction RequiresPassword() { return mRequiresPassword ? mRequiresPassword : (mRequiresPassword = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.RequiresPassword")); }
			ScriptFunction GetControllerFromString() { return mGetControllerFromString ? mGetControllerFromString : (mGetControllerFromString = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.GetControllerFromString")); }
			ScriptFunction Kick() { return mKick ? mKick : (mKick = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.Kick")); }
			ScriptFunction KickBan() { return mKickBan ? mKickBan : (mKickBan = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.KickBan")); }
			ScriptFunction ForceKickPlayer() { return mForceKickPlayer ? mForceKickPlayer : (mForceKickPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.ForceKickPlayer")); }
			ScriptFunction KickPlayer() { return mKickPlayer ? mKickPlayer : (mKickPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.KickPlayer")); }
			ScriptFunction AdminLogin() { return mAdminLogin ? mAdminLogin : (mAdminLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.AdminLogin")); }
			ScriptFunction AdminLogout() { return mAdminLogout ? mAdminLogout : (mAdminLogout = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.AdminLogout")); }
			ScriptFunction AdminEntered() { return mAdminEntered ? mAdminEntered : (mAdminEntered = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.AdminEntered")); }
			ScriptFunction AdminExited() { return mAdminExited ? mAdminExited : (mAdminExited = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.AdminExited")); }
			ScriptFunction ParseAdminOptions() { return mParseAdminOptions ? mParseAdminOptions : (mParseAdminOptions = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.ParseAdminOptions")); }
			ScriptFunction ValidLogin() { return mValidLogin ? mValidLogin : (mValidLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.ValidLogin")); }
			ScriptFunction PreLogin() { return mPreLogin ? mPreLogin : (mPreLogin = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.PreLogin")); }
			ScriptFunction CheckIPPolicy() { return mCheckIPPolicy ? mCheckIPPolicy : (mCheckIPPolicy = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.CheckIPPolicy")); }
			ScriptFunction IsIDBanned() { return mIsIDBanned ? mIsIDBanned : (mIsIDBanned = ScriptObject.Find!(ScriptFunction)("Function Engine.AccessControl.IsIDBanned")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.IsAdmin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetAdminPassword(ScriptString P)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAdminPassword, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void SetGamePassword(ScriptString P)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGamePassword, params.ptr, cast(void*)0);
	}
	bool RequiresPassword()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequiresPassword, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Controller GetControllerFromString(ScriptString Target)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetControllerFromString, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[12];
	}
	void Kick(ScriptString Target)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.Kick, params.ptr, cast(void*)0);
	}
	void KickBan(ScriptString Target)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickBan, params.ptr, cast(void*)0);
	}
	bool ForceKickPlayer(PlayerController C, ScriptString KickReason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		*cast(ScriptString*)&params[4] = KickReason;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceKickPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool KickPlayer(PlayerController C, ScriptString KickReason)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = C;
		*cast(ScriptString*)&params[4] = KickReason;
		(cast(ScriptObject)this).ProcessEvent(Functions.KickPlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool AdminLogin(PlayerController P, ScriptString Password)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(ScriptString*)&params[4] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminLogin, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool AdminLogout(PlayerController P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminLogout, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AdminEntered(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminEntered, params.ptr, cast(void*)0);
	}
	void AdminExited(PlayerController P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdminExited, params.ptr, cast(void*)0);
	}
	bool ParseAdminOptions(ScriptString Options)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseAdminOptions, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool ValidLogin(ScriptString UserName, ScriptString Password)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UserName;
		*cast(ScriptString*)&params[12] = Password;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidLogin, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PreLogin, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[24];
	}
	bool CheckIPPolicy(ScriptString Address)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Address;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckIPPolicy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool IsIDBanned(OnlineSubsystem.UniqueNetId* NetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *NetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsIDBanned, params.ptr, cast(void*)0);
		*NetId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
}
