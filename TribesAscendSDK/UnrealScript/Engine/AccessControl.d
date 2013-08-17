module UnrealScript.Engine.AccessControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface AccessControl : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AccessControl")()); }
	private static __gshared AccessControl mDefaultProperties;
	@property final static AccessControl DefaultProperties() { mixin(MGDPC!(AccessControl, "AccessControl Engine.Default__AccessControl")()); }
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
			ScriptFunction IsAdmin() { mixin(MGF!("mIsAdmin", "Function Engine.AccessControl.IsAdmin")()); }
			ScriptFunction SetAdminPassword() { mixin(MGF!("mSetAdminPassword", "Function Engine.AccessControl.SetAdminPassword")()); }
			ScriptFunction SetGamePassword() { mixin(MGF!("mSetGamePassword", "Function Engine.AccessControl.SetGamePassword")()); }
			ScriptFunction RequiresPassword() { mixin(MGF!("mRequiresPassword", "Function Engine.AccessControl.RequiresPassword")()); }
			ScriptFunction GetControllerFromString() { mixin(MGF!("mGetControllerFromString", "Function Engine.AccessControl.GetControllerFromString")()); }
			ScriptFunction Kick() { mixin(MGF!("mKick", "Function Engine.AccessControl.Kick")()); }
			ScriptFunction KickBan() { mixin(MGF!("mKickBan", "Function Engine.AccessControl.KickBan")()); }
			ScriptFunction ForceKickPlayer() { mixin(MGF!("mForceKickPlayer", "Function Engine.AccessControl.ForceKickPlayer")()); }
			ScriptFunction KickPlayer() { mixin(MGF!("mKickPlayer", "Function Engine.AccessControl.KickPlayer")()); }
			ScriptFunction AdminLogin() { mixin(MGF!("mAdminLogin", "Function Engine.AccessControl.AdminLogin")()); }
			ScriptFunction AdminLogout() { mixin(MGF!("mAdminLogout", "Function Engine.AccessControl.AdminLogout")()); }
			ScriptFunction AdminEntered() { mixin(MGF!("mAdminEntered", "Function Engine.AccessControl.AdminEntered")()); }
			ScriptFunction AdminExited() { mixin(MGF!("mAdminExited", "Function Engine.AccessControl.AdminExited")()); }
			ScriptFunction ParseAdminOptions() { mixin(MGF!("mParseAdminOptions", "Function Engine.AccessControl.ParseAdminOptions")()); }
			ScriptFunction ValidLogin() { mixin(MGF!("mValidLogin", "Function Engine.AccessControl.ValidLogin")()); }
			ScriptFunction PreLogin() { mixin(MGF!("mPreLogin", "Function Engine.AccessControl.PreLogin")()); }
			ScriptFunction CheckIPPolicy() { mixin(MGF!("mCheckIPPolicy", "Function Engine.AccessControl.CheckIPPolicy")()); }
			ScriptFunction IsIDBanned() { mixin(MGF!("mIsIDBanned", "Function Engine.AccessControl.IsIDBanned")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) IPPolicies() { mixin(MGPC!(ScriptArray!(ScriptString), 476)()); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) BannedIDs() { mixin(MGPC!(ScriptArray!(OnlineSubsystem.UniqueNetId), 488)()); }
			ScriptString ACDescText() { mixin(MGPC!(ScriptString, 648)()); }
			ScriptString ACDisplayText() { mixin(MGPC!(ScriptString, 612)()); }
			ScriptString GamePassword() { mixin(MGPC!(ScriptString, 600)()); }
			ScriptString AdminPassword() { mixin(MGPC!(ScriptString, 588)()); }
			ScriptClass AdminClass() { mixin(MGPC!(ScriptClass, 584)()); }
			ScriptString IdleKickReason() { mixin(MGPC!(ScriptString, 572)()); }
			ScriptString DefaultKickReason() { mixin(MGPC!(ScriptString, 560)()); }
			ScriptString KickedMsg() { mixin(MGPC!(ScriptString, 548)()); }
			ScriptString SessionBanned() { mixin(MGPC!(ScriptString, 536)()); }
			ScriptString NeedPassword() { mixin(MGPC!(ScriptString, 524)()); }
			ScriptString WrongPassword() { mixin(MGPC!(ScriptString, 512)()); }
			ScriptString IPBanned() { mixin(MGPC!(ScriptString, 500)()); }
		}
		bool bDontAddDefaultAdmin() { mixin(MGBPC!(684, 0x1)()); }
		bool bDontAddDefaultAdmin(bool val) { mixin(MSBPC!(684, 0x1)()); }
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
	void PreLogin(ScriptString Options, ScriptString Address, ref ScriptString OutError, bool bSpectator)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Options;
		*cast(ScriptString*)&params[12] = Address;
		*cast(ScriptString*)&params[24] = OutError;
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
	bool IsIDBanned(ref const OnlineSubsystem.UniqueNetId NetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = NetId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsIDBanned, params.ptr, cast(void*)0);
		*NetId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
}
