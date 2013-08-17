module UnrealScript.Engine.SeqEvent_AISeeEnemy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AISeeEnemy : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_AISeeEnemy")); }
	private static __gshared SeqEvent_AISeeEnemy mDefaultProperties;
	@property final static SeqEvent_AISeeEnemy DefaultProperties() { mixin(MGDPC("SeqEvent_AISeeEnemy", "SeqEvent_AISeeEnemy Engine.Default__SeqEvent_AISeeEnemy")); }
	@property final auto ref float MaxSightDistance() { mixin(MGPC("float", 256)); }
}
