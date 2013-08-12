module UnrealScript.TribesGame.GFxTrScene_Profile;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_Profile : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_Profile")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_Profile.Initialize")); }
	}
	@property final auto ref ScriptArray!(int) ChosenClasses() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 132); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
