module UnrealScript.Engine.ActorFactoryAmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

extern(C++) interface ActorFactoryAmbientSoundSimpleToggleable : ActorFactoryAmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryAmbientSoundSimpleToggleable")()); }
	private static __gshared ActorFactoryAmbientSoundSimpleToggleable mDefaultProperties;
	@property final static ActorFactoryAmbientSoundSimpleToggleable DefaultProperties() { mixin(MGDPC!(ActorFactoryAmbientSoundSimpleToggleable, "ActorFactoryAmbientSoundSimpleToggleable Engine.Default__ActorFactoryAmbientSoundSimpleToggleable")()); }
}
