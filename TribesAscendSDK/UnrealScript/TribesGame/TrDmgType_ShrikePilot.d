module UnrealScript.TribesGame.TrDmgType_ShrikePilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_ShrikePilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ShrikePilot")); }
	private static __gshared TrDmgType_ShrikePilot mDefaultProperties;
	@property final static TrDmgType_ShrikePilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ShrikePilot)("TrDmgType_ShrikePilot TribesGame.Default__TrDmgType_ShrikePilot")); }
}
