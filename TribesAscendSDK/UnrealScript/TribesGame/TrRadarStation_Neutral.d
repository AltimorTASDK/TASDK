module UnrealScript.TribesGame.TrRadarStation_Neutral;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrRadarStation_Neutral : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRadarStation_Neutral")); }
	private static __gshared TrRadarStation_Neutral mDefaultProperties;
	@property final static TrRadarStation_Neutral DefaultProperties() { mixin(MGDPC("TrRadarStation_Neutral", "TrRadarStation_Neutral TribesGame.Default__TrRadarStation_Neutral")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction ShouldShowHelpText() { mixin(MGF("mShouldShowHelpText", "Function TribesGame.TrRadarStation_Neutral.ShouldShowHelpText")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrRadarStation_Neutral.GetMarker")); }
		}
	}
final:
	bool ShouldShowHelpText(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldShowHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
