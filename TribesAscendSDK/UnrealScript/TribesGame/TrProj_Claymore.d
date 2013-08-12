module UnrealScript.TribesGame.TrProj_Claymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Texture2D;

extern(C++) interface TrProj_Claymore : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Claymore")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitProjectile;
			ScriptFunction mSetExplosionEffectParameters;
			ScriptFunction mPawnEnteredDetonationArea;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction InitProjectile() { return mInitProjectile ? mInitProjectile : (mInitProjectile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Claymore.InitProjectile")); }
			ScriptFunction SetExplosionEffectParameters() { return mSetExplosionEffectParameters ? mSetExplosionEffectParameters : (mSetExplosionEffectParameters = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Claymore.SetExplosionEffectParameters")); }
			ScriptFunction PawnEnteredDetonationArea() { return mPawnEnteredDetonationArea ? mPawnEnteredDetonationArea : (mPawnEnteredDetonationArea = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Claymore.PawnEnteredDetonationArea")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_Claymore.GetMarker")); }
		}
	}
	@property final auto ref
	{
		float m_fScalarAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
		float m_fDetonationAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
	}
final:
	void InitProjectile(Vector Direction, ScriptClass ClassToInherit)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		*cast(ScriptClass*)&params[12] = ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void SetExplosionEffectParameters(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* ProjExplosion)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = ProjExplosion;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetExplosionEffectParameters, params.ptr, cast(void*)0);
	}
	void PawnEnteredDetonationArea(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredDetonationArea, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
