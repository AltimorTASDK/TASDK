module UnrealScript.Engine.ActorFactoryCoverLink;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryCoverLink : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryCoverLink")); }
	private static __gshared ActorFactoryCoverLink mDefaultProperties;
	@property final static ActorFactoryCoverLink DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryCoverLink)("ActorFactoryCoverLink Engine.Default__ActorFactoryCoverLink")); }
}
