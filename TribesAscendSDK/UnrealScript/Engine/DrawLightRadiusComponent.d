module UnrealScript.Engine.DrawLightRadiusComponent;

import ScriptClasses;
import UnrealScript.Engine.DrawSphereComponent;

extern(C++) interface DrawLightRadiusComponent : DrawSphereComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawLightRadiusComponent")); }
	private static __gshared DrawLightRadiusComponent mDefaultProperties;
	@property final static DrawLightRadiusComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawLightRadiusComponent)("DrawLightRadiusComponent Engine.Default__DrawLightRadiusComponent")); }
}
