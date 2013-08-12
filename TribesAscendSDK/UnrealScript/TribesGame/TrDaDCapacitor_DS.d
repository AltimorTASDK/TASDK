module UnrealScript.TribesGame.TrDaDCapacitor_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrDaDCapacitor;

extern(C++) interface TrDaDCapacitor_DS : TrDaDCapacitor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCapacitor_DS")); }
	private static __gshared TrDaDCapacitor_DS mDefaultProperties;
	@property final static TrDaDCapacitor_DS DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDaDCapacitor_DS)("TrDaDCapacitor_DS TribesGame.Default__TrDaDCapacitor_DS")); }
}
