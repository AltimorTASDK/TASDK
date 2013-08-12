module UnrealScript.TribesGame.GFxTrPage_KeybindSpecMovement;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindSpecMovement : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindSpecMovement")); }
	private static __gshared GFxTrPage_KeybindSpecMovement mDefaultProperties;
	@property final static GFxTrPage_KeybindSpecMovement DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_KeybindSpecMovement)("GFxTrPage_KeybindSpecMovement TribesGame.Default__GFxTrPage_KeybindSpecMovement")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindSpecMovement.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
