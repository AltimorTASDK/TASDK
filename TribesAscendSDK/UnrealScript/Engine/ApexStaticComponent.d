module UnrealScript.Engine.ApexStaticComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ApexComponentBase;

extern(C++) interface ApexStaticComponent : ApexComponentBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ApexStaticComponent")); }
	private static __gshared ApexStaticComponent mDefaultProperties;
	@property final static ApexStaticComponent DefaultProperties() { mixin(MGDPC("ApexStaticComponent", "ApexStaticComponent Engine.Default__ApexStaticComponent")); }
}
