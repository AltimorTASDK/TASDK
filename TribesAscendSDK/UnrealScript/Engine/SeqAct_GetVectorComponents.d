module UnrealScript.Engine.SeqAct_GetVectorComponents;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetVectorComponents : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_GetVectorComponents")); }
	private static __gshared SeqAct_GetVectorComponents mDefaultProperties;
	@property final static SeqAct_GetVectorComponents DefaultProperties() { mixin(MGDPC("SeqAct_GetVectorComponents", "SeqAct_GetVectorComponents Engine.Default__SeqAct_GetVectorComponents")); }
	@property final auto ref
	{
		float Z() { mixin(MGPC("float", 252)); }
		float Y() { mixin(MGPC("float", 248)); }
		float X() { mixin(MGPC("float", 244)); }
		Vector InVector() { mixin(MGPC("Vector", 232)); }
	}
}
