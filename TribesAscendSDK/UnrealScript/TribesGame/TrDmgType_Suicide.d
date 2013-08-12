module UnrealScript.TribesGame.TrDmgType_Suicide;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Suicide : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Suicide")); }
	private static __gshared TrDmgType_Suicide mDefaultProperties;
	@property final static TrDmgType_Suicide DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Suicide)("TrDmgType_Suicide TribesGame.Default__TrDmgType_Suicide")); }
}
