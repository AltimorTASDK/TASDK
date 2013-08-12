module UnrealScript.Engine.DmgType_Suicided;

import ScriptClasses;
import UnrealScript.Engine.KillZDamageType;

extern(C++) interface DmgType_Suicided : KillZDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DmgType_Suicided")); }
	private static __gshared DmgType_Suicided mDefaultProperties;
	@property final static DmgType_Suicided DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DmgType_Suicided)("DmgType_Suicided Engine.Default__DmgType_Suicided")); }
}
