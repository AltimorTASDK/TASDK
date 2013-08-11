module UnrealScript.UTGame.UTAmbientSoundComponent;

import ScriptClasses;
import UnrealScript.Engine.AudioComponent;

extern(C++) interface UTAmbientSoundComponent : AudioComponent
{
public extern(D):
	final void OcclusionChanged(bool bNowOccluded)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOccluded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40389], params.ptr, cast(void*)0);
	}
}
