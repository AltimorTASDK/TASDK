module UnrealScript.TribesGame.TrPaperDollTransient;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrPaperDoll;

extern(C++) interface TrPaperDollTransient : TrPaperDoll
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPaperDollTransient")); }
	private static __gshared TrPaperDollTransient mDefaultProperties;
	@property final static TrPaperDollTransient DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPaperDollTransient)("TrPaperDollTransient TribesGame.Default__TrPaperDollTransient")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDollTransient.PostBeginPlay")); }
			ScriptFunction FadeInBackdrop() { return mFadeInBackdrop ? mFadeInBackdrop : (mFadeInBackdrop = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDollTransient.FadeInBackdrop")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDollTransient.Tick")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPaperDollTransient.SetPosition")); }
		}
	}
	@property final auto ref
	{
		float m_fBackdropFadeRemainingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
		float m_fBackdropFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 912); }
		MaterialInstanceConstant m_BackdropMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 908); }
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
