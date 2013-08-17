module UnrealScript.TribesGame.TrDaDCapacitor_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDaDCapacitor;

extern(C++) interface TrDaDCapacitor_BE : TrDaDCapacitor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDaDCapacitor_BE")); }
	private static __gshared TrDaDCapacitor_BE mDefaultProperties;
	@property final static TrDaDCapacitor_BE DefaultProperties() { mixin(MGDPC("TrDaDCapacitor_BE", "TrDaDCapacitor_BE TribesGame.Default__TrDaDCapacitor_BE")); }
}
