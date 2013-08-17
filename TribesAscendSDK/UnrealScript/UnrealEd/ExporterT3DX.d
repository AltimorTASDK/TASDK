module UnrealScript.UnrealEd.ExporterT3DX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface ExporterT3DX : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ExporterT3DX")()); }
	private static __gshared ExporterT3DX mDefaultProperties;
	@property final static ExporterT3DX DefaultProperties() { mixin(MGDPC!(ExporterT3DX, "ExporterT3DX UnrealEd.Default__ExporterT3DX")()); }
}
