module UnrealScript.GameFramework.GameCrowdInteractionPoint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface GameCrowdInteractionPoint : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdInteractionPoint")); }
	private static __gshared GameCrowdInteractionPoint mDefaultProperties;
	@property final static GameCrowdInteractionPoint DefaultProperties() { mixin(MGDPC("GameCrowdInteractionPoint", "GameCrowdInteractionPoint GameFramework.Default__GameCrowdInteractionPoint")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function GameFramework.GameCrowdInteractionPoint.OnToggle")); }
	}
	@property final
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'CylinderComponent'!
		bool bIsEnabled() { mixin(MGBPC(476, 0x1)); }
		bool bIsEnabled(bool val) { mixin(MSBPC(476, 0x1)); }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
