module UnrealScript.UTGame.UTLinkBeamLight;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface UTLinkBeamLight : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTLinkBeamLight")); }
	private static __gshared UTLinkBeamLight mDefaultProperties;
	@property final static UTLinkBeamLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTLinkBeamLight)("UTLinkBeamLight UTGame.Default__UTLinkBeamLight")); }
}
