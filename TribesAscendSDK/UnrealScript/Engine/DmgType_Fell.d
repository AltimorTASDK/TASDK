module UnrealScript.Engine.DmgType_Fell;

import ScriptClasses;
import UnrealScript.Engine.DamageType;

extern(C++) interface DmgType_Fell : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DmgType_Fell")); }
	private static __gshared DmgType_Fell mDefaultProperties;
	@property final static DmgType_Fell DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DmgType_Fell)("DmgType_Fell Engine.Default__DmgType_Fell")); }
}
