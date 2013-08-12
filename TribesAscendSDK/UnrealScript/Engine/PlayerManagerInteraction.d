module UnrealScript.Engine.PlayerManagerInteraction;

import ScriptClasses;
import UnrealScript.Engine.Interaction;

extern(C++) interface PlayerManagerInteraction : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PlayerManagerInteraction")); }
	private static __gshared PlayerManagerInteraction mDefaultProperties;
	@property final static PlayerManagerInteraction DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PlayerManagerInteraction)("PlayerManagerInteraction Engine.Default__PlayerManagerInteraction")); }
}
