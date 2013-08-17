module UnrealScript.Engine.SeqAct_ForceGarbageCollection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_ForceGarbageCollection : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ForceGarbageCollection")); }
	private static __gshared SeqAct_ForceGarbageCollection mDefaultProperties;
	@property final static SeqAct_ForceGarbageCollection DefaultProperties() { mixin(MGDPC("SeqAct_ForceGarbageCollection", "SeqAct_ForceGarbageCollection Engine.Default__SeqAct_ForceGarbageCollection")); }
}
