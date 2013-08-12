module UnrealScript.TribesGame.GFxTrPage_KeybindMovement;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindMovement : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindMovement")); }
	private static __gshared GFxTrPage_KeybindMovement mDefaultProperties;
	@property final static GFxTrPage_KeybindMovement DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_KeybindMovement)("GFxTrPage_KeybindMovement TribesGame.Default__GFxTrPage_KeybindMovement")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindMovement.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
