module UnrealScript.TribesGame.TrLoadingData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrLoadingData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrLoadingData")()); }
	private static __gshared TrLoadingData mDefaultProperties;
	@property final static TrLoadingData DefaultProperties() { mixin(MGDPC!(TrLoadingData, "TrLoadingData TribesGame.Default__TrLoadingData")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetRandomTip;
			ScriptFunction mInitialize;
			ScriptFunction mSetDataFields;
		}
		public @property static final
		{
			ScriptFunction GetRandomTip() { mixin(MGF!("mGetRandomTip", "Function TribesGame.TrLoadingData.GetRandomTip")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrLoadingData.Initialize")()); }
			ScriptFunction SetDataFields() { mixin(MGF!("mSetDataFields", "Function TribesGame.TrLoadingData.SetDataFields")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ScriptString) CTFTips() { mixin(MGPC!("ScriptArray!(ScriptString)", 204)()); }
		ScriptArray!(ScriptString) TDMTips() { mixin(MGPC!("ScriptArray!(ScriptString)", 216)()); }
		ScriptArray!(ScriptString) RabbitTips() { mixin(MGPC!("ScriptArray!(ScriptString)", 228)()); }
		ScriptArray!(ScriptString) ArenaTips() { mixin(MGPC!("ScriptArray!(ScriptString)", 240)()); }
		ScriptArray!(ScriptString) GenericTips() { mixin(MGPC!("ScriptArray!(ScriptString)", 252)()); }
		ScriptArray!(ScriptString) CaHTips() { mixin(MGPC!("ScriptArray!(ScriptString)", 264)()); }
		ScriptString RulesForBlitz() { mixin(MGPC!("ScriptString", 192)()); }
		ScriptString RulesForCaH() { mixin(MGPC!("ScriptString", 180)()); }
		ScriptString RulesForDaD() { mixin(MGPC!("ScriptString", 168)()); }
		ScriptString RulesForArena() { mixin(MGPC!("ScriptString", 156)()); }
		ScriptString RulesForRabbit() { mixin(MGPC!("ScriptString", 144)()); }
		ScriptString RulesForTDM() { mixin(MGPC!("ScriptString", 132)()); }
		ScriptString RulesForCTF() { mixin(MGPC!("ScriptString", 120)()); }
		ScriptString GameType() { mixin(MGPC!("ScriptString", 108)()); }
		ScriptString MapName() { mixin(MGPC!("ScriptString", 96)()); }
		ScriptString MapURL() { mixin(MGPC!("ScriptString", 84)()); }
		ScriptString Rules() { mixin(MGPC!("ScriptString", 72)()); }
		ScriptString Tip() { mixin(MGPC!("ScriptString", 60)()); }
	}
final:
	ScriptString GetRandomTip(int GameIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = GameIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRandomTip, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SetDataFields()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDataFields, cast(void*)0, cast(void*)0);
	}
}
