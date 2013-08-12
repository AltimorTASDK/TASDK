module UnrealScript.TribesGame.TrDmgType_HERCPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_HERCPilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_HERCPilot")); }
	private static __gshared TrDmgType_HERCPilot mDefaultProperties;
	@property final static TrDmgType_HERCPilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_HERCPilot)("TrDmgType_HERCPilot TribesGame.Default__TrDmgType_HERCPilot")); }
}
