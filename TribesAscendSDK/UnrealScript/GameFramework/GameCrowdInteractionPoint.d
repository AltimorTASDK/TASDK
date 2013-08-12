module UnrealScript.GameFramework.GameCrowdInteractionPoint;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;

extern(C++) interface GameCrowdInteractionPoint : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdInteractionPoint")); }
	private static __gshared GameCrowdInteractionPoint mDefaultProperties;
	@property final static GameCrowdInteractionPoint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdInteractionPoint)("GameCrowdInteractionPoint GameFramework.Default__GameCrowdInteractionPoint")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdInteractionPoint.OnToggle")); }
	}
	@property final
	{
		bool bIsEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bIsEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
