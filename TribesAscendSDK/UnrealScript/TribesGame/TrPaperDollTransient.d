module UnrealScript.TribesGame.TrPaperDollTransient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrPaperDoll;

extern(C++) interface TrPaperDollTransient : TrPaperDoll
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPaperDollTransient")()); }
	private static __gshared TrPaperDollTransient mDefaultProperties;
	@property final static TrPaperDollTransient DefaultProperties() { mixin(MGDPC!(TrPaperDollTransient, "TrPaperDollTransient TribesGame.Default__TrPaperDollTransient")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mFadeInBackdrop;
			ScriptFunction mTick;
			ScriptFunction mSetPosition;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrPaperDollTransient.PostBeginPlay")()); }
			ScriptFunction FadeInBackdrop() { mixin(MGF!("mFadeInBackdrop", "Function TribesGame.TrPaperDollTransient.FadeInBackdrop")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrPaperDollTransient.Tick")()); }
			ScriptFunction SetPosition() { mixin(MGF!("mSetPosition", "Function TribesGame.TrPaperDollTransient.SetPosition")()); }
		}
	}
	@property final auto ref
	{
		float m_fBackdropFadeRemainingTime() { mixin(MGPC!("float", 916)()); }
		float m_fBackdropFadeTime() { mixin(MGPC!("float", 912)()); }
		MaterialInstanceConstant m_BackdropMIC() { mixin(MGPC!("MaterialInstanceConstant", 908)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void FadeInBackdrop()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FadeInBackdrop, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void SetPosition(Vector ViewPos, Rotator ViewRot)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = ViewPos;
		*cast(Rotator*)&params[12] = ViewRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
}
