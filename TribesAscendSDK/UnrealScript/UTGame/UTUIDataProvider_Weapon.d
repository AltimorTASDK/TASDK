module UnrealScript.UTGame.UTUIDataProvider_Weapon;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Weapon : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_Weapon")); }
	private static __gshared UTUIDataProvider_Weapon mDefaultProperties;
	@property final static UTUIDataProvider_Weapon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_Weapon)("UTUIDataProvider_Weapon UTGame.Default__UTUIDataProvider_Weapon")); }
	@property final auto ref
	{
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
		ScriptString Flags() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptString AmmoClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	}
}
