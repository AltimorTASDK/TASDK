module UnrealScript.Engine.PlayerStart;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface PlayerStart : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PlayerStart")); }
	private static __gshared PlayerStart mDefaultProperties;
	@property final static PlayerStart DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PlayerStart)("PlayerStart Engine.Default__PlayerStart")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerStart.OnToggle")); }
	}
	@property final
	{
		@property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 696); }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
		bool bPrimaryStart() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2) != 0; }
		bool bPrimaryStart(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2; } return val; }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
