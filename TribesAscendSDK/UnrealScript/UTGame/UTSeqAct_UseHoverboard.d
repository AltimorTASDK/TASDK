module UnrealScript.UTGame.UTSeqAct_UseHoverboard;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_UseHoverboard : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqAct_UseHoverboard")); }
	private static __gshared UTSeqAct_UseHoverboard mDefaultProperties;
	@property final static UTSeqAct_UseHoverboard DefaultProperties() { mixin(MGDPC("UTSeqAct_UseHoverboard", "UTSeqAct_UseHoverboard UTGame.Default__UTSeqAct_UseHoverboard")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function UTGame.UTSeqAct_UseHoverboard.GetObjClassVersion")); }
	}
	@property final auto ref UTVehicle Hoverboard() { mixin(MGPC("UTVehicle", 232)); }
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
