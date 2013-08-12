module UnrealScript.Engine.ActorFactoryAmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

extern(C++) interface ActorFactoryAmbientSoundSimpleToggleable : ActorFactoryAmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSoundSimpleToggleable")); }
	private static __gshared ActorFactoryAmbientSoundSimpleToggleable mDefaultProperties;
	@property final static ActorFactoryAmbientSoundSimpleToggleable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryAmbientSoundSimpleToggleable)("ActorFactoryAmbientSoundSimpleToggleable Engine.Default__ActorFactoryAmbientSoundSimpleToggleable")); }
}
