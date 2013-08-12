module UnrealScript.UnrealEd.MaterialExporterT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.ExporterT3DX;

extern(C++) interface MaterialExporterT3D : ExporterT3DX
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MaterialExporterT3D")); }
	private static __gshared MaterialExporterT3D mDefaultProperties;
	@property final static MaterialExporterT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExporterT3D)("MaterialExporterT3D UnrealEd.Default__MaterialExporterT3D")); }
}
