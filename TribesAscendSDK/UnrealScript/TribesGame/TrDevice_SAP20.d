module UnrealScript.TribesGame.TrDevice_SAP20;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_PhaseRifle;

extern(C++) interface TrDevice_SAP20 : TrDevice_PhaseRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SAP20")); }
	private static __gshared TrDevice_SAP20 mDefaultProperties;
	@property final static TrDevice_SAP20 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_SAP20)("TrDevice_SAP20 TribesGame.Default__TrDevice_SAP20")); }
}
