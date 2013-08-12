module UnrealScript.Engine.SeqAct_ForceGarbageCollection;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ForceGarbageCollection : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ForceGarbageCollection")); }
}
