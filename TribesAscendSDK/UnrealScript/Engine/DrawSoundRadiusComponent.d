module UnrealScript.Engine.DrawSoundRadiusComponent;

import ScriptClasses;
import UnrealScript.Engine.DrawSphereComponent;

extern(C++) interface DrawSoundRadiusComponent : DrawSphereComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawSoundRadiusComponent")); }
	private static __gshared DrawSoundRadiusComponent mDefaultProperties;
	@property final static DrawSoundRadiusComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DrawSoundRadiusComponent)("DrawSoundRadiusComponent Engine.Default__DrawSoundRadiusComponent")); }
}
