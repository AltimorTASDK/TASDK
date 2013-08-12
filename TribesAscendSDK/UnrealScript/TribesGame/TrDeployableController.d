module UnrealScript.TribesGame.TrDeployableController;

import ScriptClasses;
import UnrealScript.Engine.AIController;
import UnrealScript.Engine.Weapon;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrDeployableController : AIController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployableController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCanFireWeapon;
			ScriptFunction mScriptGetTeamNum;
		}
		public @property static final
		{
			ScriptFunction CanFireWeapon() { return mCanFireWeapon ? mCanFireWeapon : (mCanFireWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableController.CanFireWeapon")); }
			ScriptFunction ScriptGetTeamNum() { return mScriptGetTeamNum ? mScriptGetTeamNum : (mScriptGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployableController.ScriptGetTeamNum")); }
		}
	}
	@property final auto ref TrPlayerController m_SpawnedFromController() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 924); }
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
