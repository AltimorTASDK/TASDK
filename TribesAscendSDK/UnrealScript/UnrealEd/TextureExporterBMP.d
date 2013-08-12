module UnrealScript.UnrealEd.TextureExporterBMP;

import ScriptClasses;
import UnrealScript.Core.Exporter;

extern(C++) interface TextureExporterBMP : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureExporterBMP")); }
	private static __gshared TextureExporterBMP mDefaultProperties;
	@property final static TextureExporterBMP DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureExporterBMP)("TextureExporterBMP UnrealEd.Default__TextureExporterBMP")); }
}
