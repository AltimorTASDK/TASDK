module UnrealScript.Engine.Player;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface Player : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Player")()); }
	private static __gshared Player mDefaultProperties;
	@property final static Player DefaultProperties() { mixin(MGDPC!(Player, "Player Engine.Default__Player")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSwitchController;
		public @property static final ScriptFunction SwitchController() { mixin(MGF!("mSwitchController", "Function Engine.Player.SwitchController")()); }
	}
	@property final auto ref
	{
		int CurrentNetSpeed() { mixin(MGPC!("int", 68)()); }
		// WARNING: Property 'Actor' has the same name as a defined type!
		float PP_ShadowsMultiplier() { mixin(MGPC!("float", 92)()); }
		float PP_MidTonesMultiplier() { mixin(MGPC!("float", 88)()); }
		float PP_HighlightsMultiplier() { mixin(MGPC!("float", 84)()); }
		float PP_DesaturationMultiplier() { mixin(MGPC!("float", 80)()); }
		int ConfiguredLanSpeed() { mixin(MGPC!("int", 76)()); }
		int ConfiguredInternetSpeed() { mixin(MGPC!("int", 72)()); }
		UObject.Pointer VfTable_FExec() { mixin(MGPC!("UObject.Pointer", 60)()); }
	}
	final void SwitchController(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchController, params.ptr, cast(void*)0);
	}
}
