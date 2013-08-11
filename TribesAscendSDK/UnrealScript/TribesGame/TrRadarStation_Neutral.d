module UnrealScript.TribesGame.TrRadarStation_Neutral;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_Neutral : TrDeployable_RadarSensor
{
	final bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110376], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110379], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
