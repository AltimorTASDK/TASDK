module UnrealScript.Engine.RB_Thruster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_Thruster : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_Thruster")); }
	private static __gshared RB_Thruster mDefaultProperties;
	@property final static RB_Thruster DefaultProperties() { mixin(MGDPC("RB_Thruster", "RB_Thruster Engine.Default__RB_Thruster")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.RB_Thruster.OnToggle")); }
	}
	@property final
	{
		@property final auto ref float ThrustStrength() { mixin(MGPC("float", 480)); }
		bool bThrustEnabled() { mixin(MGBPC(476, 0x1)); }
		bool bThrustEnabled(bool val) { mixin(MSBPC(476, 0x1)); }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
