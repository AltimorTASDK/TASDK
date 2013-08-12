module UnrealScript.TribesGame.TrDmgType_GrenadeT5;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_GrenadeT5 : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_GrenadeT5")); }
	private static __gshared TrDmgType_GrenadeT5 mDefaultProperties;
	@property final static TrDmgType_GrenadeT5 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_GrenadeT5)("TrDmgType_GrenadeT5 TribesGame.Default__TrDmgType_GrenadeT5")); }
}
