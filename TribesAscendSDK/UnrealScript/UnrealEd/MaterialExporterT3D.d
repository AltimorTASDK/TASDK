module UnrealScript.UnrealEd.MaterialExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ExporterT3DX;

extern(C++) interface MaterialExporterT3D : ExporterT3DX
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MaterialExporterT3D")()); }
	private static __gshared MaterialExporterT3D mDefaultProperties;
	@property final static MaterialExporterT3D DefaultProperties() { mixin(MGDPC!(MaterialExporterT3D, "MaterialExporterT3D UnrealEd.Default__MaterialExporterT3D")()); }
}
