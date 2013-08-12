module UnrealScript.Engine.SeqAct_ForceGarbageCollection;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ForceGarbageCollection : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ForceGarbageCollection")); }
	private static __gshared SeqAct_ForceGarbageCollection mDefaultProperties;
	@property final static SeqAct_ForceGarbageCollection DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ForceGarbageCollection)("SeqAct_ForceGarbageCollection Engine.Default__SeqAct_ForceGarbageCollection")); }
}
