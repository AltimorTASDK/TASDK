module UnrealScript.UDKBase.UDKMapInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MapInfo;

extern(C++) interface UDKMapInfo : MapInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKMapInfo")()); }
	private static __gshared UDKMapInfo mDefaultProperties;
	@property final static UDKMapInfo DefaultProperties() { mixin(MGDPC!(UDKMapInfo, "UDKMapInfo UDKBase.Default__UDKMapInfo")()); }
	@property final auto ref float VisibilityModifier() { mixin(MGPC!(float, 60)()); }
}
