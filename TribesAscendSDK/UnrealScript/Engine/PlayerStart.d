module UnrealScript.Engine.PlayerStart;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface PlayerStart : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PlayerStart")); }
	private static __gshared PlayerStart mDefaultProperties;
	@property final static PlayerStart DefaultProperties() { mixin(MGDPC("PlayerStart", "PlayerStart Engine.Default__PlayerStart")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.PlayerStart.OnToggle")); }
	}
	@property final
	{
		@property final auto ref int TeamIndex() { mixin(MGPC("int", 696)); }
		bool bEnabled() { mixin(MGBPC(692, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(692, 0x1)); }
		bool bPrimaryStart() { mixin(MGBPC(692, 0x2)); }
		bool bPrimaryStart(bool val) { mixin(MSBPC(692, 0x2)); }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
