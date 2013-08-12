module UnrealScript.TribesGame.TrDaDCapacitor;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrDaDCore;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrDaDCapacitor : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDaDCapacitor")); }
	private static __gshared TrDaDCapacitor mDefaultProperties;
	@property final static TrDaDCapacitor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDaDCapacitor)("TrDaDCapacitor TribesGame.Default__TrDaDCapacitor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mTakeDamage;
			ScriptFunction mGetScreenName;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCapacitor.Init")); }
			ScriptFunction TakeDamage() { return mTakeDamage ? mTakeDamage : (mTakeDamage = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCapacitor.TakeDamage")); }
			ScriptFunction GetScreenName() { return mGetScreenName ? mGetScreenName : (mGetScreenName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCapacitor.GetScreenName")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCapacitor.PostRenderFor")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDaDCapacitor.GetMarker")); }
		}
	}
	@property final auto ref
	{
		ScriptString StringC() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1404); }
		ScriptString StringB() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1392); }
		ScriptString StringA() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1380); }
		int m_CapacitorIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 1372); }
		TrDaDCore m_Core() { return *cast(TrDaDCore*)(cast(size_t)cast(void*)this + 1368); }
		float m_fShieldBarPlacementY() { return *cast(float*)(cast(size_t)cast(void*)this + 1364); }
		MaterialInstanceConstant m_ShieldBarMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1360); }
	}
final:
	void Init(TrDaDCore Core, int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrDaDCore*)params.ptr = Core;
		*cast(int*)&params[4] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	void TakeDamage(int DamageAmount, Controller EventInstigator, Vector HitLocation, Vector Momentum, ScriptClass pDamageType, Actor.TraceHitInfo HitInfo, Actor DamageCauser)
	{
		ubyte params[68];
		params[] = 0;
		*cast(int*)params.ptr = DamageAmount;
		*cast(Controller*)&params[4] = EventInstigator;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = Momentum;
		*cast(ScriptClass*)&params[32] = pDamageType;
		*cast(Actor.TraceHitInfo*)&params[36] = HitInfo;
		*cast(Actor*)&params[64] = DamageCauser;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeDamage, params.ptr, cast(void*)0);
	}
	ScriptString GetScreenName(PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetScreenName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
