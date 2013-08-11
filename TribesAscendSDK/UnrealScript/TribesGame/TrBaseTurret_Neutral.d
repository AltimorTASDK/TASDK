module UnrealScript.TribesGame.TrBaseTurret_Neutral;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrBaseTurret_Neutral : TrDeployable_BaseTurret
{
	final bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72148], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72151], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
