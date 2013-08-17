module UnrealScript.TribesGame.TrDeployableController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDeployableController : AIController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableController")); }
	private static __gshared TrDeployableController mDefaultProperties;
	@property final static TrDeployableController DefaultProperties() { mixin(MGDPC("TrDeployableController", "TrDeployableController TribesGame.Default__TrDeployableController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanFireWeapon;
			ScriptFunction mScriptGetTeamNum;
		}
		public @property static final
		{
			ScriptFunction CanFireWeapon() { mixin(MGF("mCanFireWeapon", "Function TribesGame.TrDeployableController.CanFireWeapon")); }
			ScriptFunction ScriptGetTeamNum() { mixin(MGF("mScriptGetTeamNum", "Function TribesGame.TrDeployableController.ScriptGetTeamNum")); }
		}
	}
	@property final auto ref TrPlayerController m_SpawnedFromController() { mixin(MGPC("TrPlayerController", 924)); }
final:
	bool CanFireWeapon(Weapon Wpn, ubyte FireModeNum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = Wpn;
		params[4] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanFireWeapon, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ubyte ScriptGetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScriptGetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
}
