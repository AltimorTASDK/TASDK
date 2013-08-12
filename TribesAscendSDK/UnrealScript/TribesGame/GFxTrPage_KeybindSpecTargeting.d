module UnrealScript.TribesGame.GFxTrPage_KeybindSpecTargeting;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindSpecTargeting : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindSpecTargeting")); }
	private static __gshared GFxTrPage_KeybindSpecTargeting mDefaultProperties;
	@property final static GFxTrPage_KeybindSpecTargeting DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_KeybindSpecTargeting)("GFxTrPage_KeybindSpecTargeting TribesGame.Default__GFxTrPage_KeybindSpecTargeting")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindSpecTargeting.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
