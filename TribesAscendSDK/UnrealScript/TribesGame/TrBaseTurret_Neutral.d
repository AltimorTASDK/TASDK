module UnrealScript.TribesGame.TrBaseTurret_Neutral;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable_BaseTurret;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrBaseTurret_Neutral : TrDeployable_BaseTurret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBaseTurret_Neutral")); }
	private static __gshared TrBaseTurret_Neutral mDefaultProperties;
	@property final static TrBaseTurret_Neutral DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBaseTurret_Neutral)("TrBaseTurret_Neutral TribesGame.Default__TrBaseTurret_Neutral")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldShowHelpText;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction ShouldShowHelpText() { return mShouldShowHelpText ? mShouldShowHelpText : (mShouldShowHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBaseTurret_Neutral.ShouldShowHelpText")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBaseTurret_Neutral.GetMarker")); }
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
