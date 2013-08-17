module UnrealScript.UnrealEd.ActorFactorySelection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Selection;

extern(C++) interface ActorFactorySelection : Selection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ActorFactorySelection")()); }
	private static __gshared ActorFactorySelection mDefaultProperties;
	@property final static ActorFactorySelection DefaultProperties() { mixin(MGDPC!(ActorFactorySelection, "ActorFactorySelection UnrealEd.Default__ActorFactorySelection")()); }
}
