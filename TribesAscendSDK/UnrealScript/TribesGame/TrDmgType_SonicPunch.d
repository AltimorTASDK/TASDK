module UnrealScript.TribesGame.TrDmgType_SonicPunch;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_SonicPunch : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SonicPunch")); }
	private static __gshared TrDmgType_SonicPunch mDefaultProperties;
	@property final static TrDmgType_SonicPunch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SonicPunch)("TrDmgType_SonicPunch TribesGame.Default__TrDmgType_SonicPunch")); }
}
