module UnrealScript.Engine.DmgType_Telefragged;

import ScriptClasses;
import UnrealScript.Engine.DamageType;

extern(C++) interface DmgType_Telefragged : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DmgType_Telefragged")); }
	private static __gshared DmgType_Telefragged mDefaultProperties;
	@property final static DmgType_Telefragged DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DmgType_Telefragged)("DmgType_Telefragged Engine.Default__DmgType_Telefragged")); }
}
