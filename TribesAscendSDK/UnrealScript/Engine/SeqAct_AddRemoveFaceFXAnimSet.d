module UnrealScript.Engine.SeqAct_AddRemoveFaceFXAnimSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AddRemoveFaceFXAnimSet : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AddRemoveFaceFXAnimSet")()); }
	private static __gshared SeqAct_AddRemoveFaceFXAnimSet mDefaultProperties;
	@property final static SeqAct_AddRemoveFaceFXAnimSet DefaultProperties() { mixin(MGDPC!(SeqAct_AddRemoveFaceFXAnimSet, "SeqAct_AddRemoveFaceFXAnimSet Engine.Default__SeqAct_AddRemoveFaceFXAnimSet")()); }
	@property final auto ref ScriptArray!(FaceFXAnimSet) FaceFXAnimSets() { mixin(MGPC!(ScriptArray!(FaceFXAnimSet), 232)()); }
}
