module UnrealScript.Engine.DrawLightConeComponent;

import ScriptClasses;
import UnrealScript.Engine.DrawConeComponent;

extern(C++) interface DrawLightConeComponent : DrawConeComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawLightConeComponent")); }
	private static __gshared DrawLightConeComponent mDefaultProperties;
	@property final static DrawLightConeComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawLightConeComponent)("DrawLightConeComponent Engine.Default__DrawLightConeComponent")); }
}
