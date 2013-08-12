module UnrealScript.Engine.DmgType_Crushed;

import ScriptClasses;
import UnrealScript.Engine.DamageType;

extern(C++) interface DmgType_Crushed : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DmgType_Crushed")); }
	private static __gshared DmgType_Crushed mDefaultProperties;
	@property final static DmgType_Crushed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DmgType_Crushed)("DmgType_Crushed Engine.Default__DmgType_Crushed")); }
}
