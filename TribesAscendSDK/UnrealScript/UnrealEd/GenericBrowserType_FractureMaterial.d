module UnrealScript.UnrealEd.GenericBrowserType_FractureMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_FractureMaterial : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_FractureMaterial")()); }
	private static __gshared GenericBrowserType_FractureMaterial mDefaultProperties;
	@property final static GenericBrowserType_FractureMaterial DefaultProperties() { mixin(MGDPC!(GenericBrowserType_FractureMaterial, "GenericBrowserType_FractureMaterial UnrealEd.Default__GenericBrowserType_FractureMaterial")()); }
}
