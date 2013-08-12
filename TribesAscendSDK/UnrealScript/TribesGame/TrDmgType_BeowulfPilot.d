module UnrealScript.TribesGame.TrDmgType_BeowulfPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_BeowulfPilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_BeowulfPilot")); }
	private static __gshared TrDmgType_BeowulfPilot mDefaultProperties;
	@property final static TrDmgType_BeowulfPilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_BeowulfPilot)("TrDmgType_BeowulfPilot TribesGame.Default__TrDmgType_BeowulfPilot")); }
}
