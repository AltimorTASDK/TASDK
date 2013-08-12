module UnrealScript.TribesGame.TrDmgType_HavocPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_HavocPilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HavocPilot")); }
	private static __gshared TrDmgType_HavocPilot mDefaultProperties;
	@property final static TrDmgType_HavocPilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HavocPilot)("TrDmgType_HavocPilot TribesGame.Default__TrDmgType_HavocPilot")); }
}
