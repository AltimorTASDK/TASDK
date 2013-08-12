module UnrealScript.UTGame.UTUIDataProvider_KeyBinding;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_KeyBinding : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_KeyBinding")); }
	private static __gshared UTUIDataProvider_KeyBinding mDefaultProperties;
	@property final static UTUIDataProvider_KeyBinding DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_KeyBinding)("UTUIDataProvider_KeyBinding UTGame.Default__UTUIDataProvider_KeyBinding")); }
	@property final
	{
		@property final auto ref ScriptString Command() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		bool bIsCrucialBind() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bIsCrucialBind(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
}
