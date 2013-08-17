module UnrealScript.Engine.SeqAct_ApplySoundNode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ApplySoundNode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ApplySoundNode")); }
	private static __gshared SeqAct_ApplySoundNode mDefaultProperties;
	@property final static SeqAct_ApplySoundNode DefaultProperties() { mixin(MGDPC("SeqAct_ApplySoundNode", "SeqAct_ApplySoundNode Engine.Default__SeqAct_ApplySoundNode")); }
	@property final auto ref
	{
		SoundNode ApplyNode() { mixin(MGPC("SoundNode", 236)); }
		SoundCue PlaySound() { mixin(MGPC("SoundCue", 232)); }
	}
}
