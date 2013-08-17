module UnrealScript.TribesGame.TrProj_Claymore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Texture2D;

extern(C++) interface TrProj_Claymore : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Claymore")()); }
	private static __gshared TrProj_Claymore mDefaultProperties;
	@property final static TrProj_Claymore DefaultProperties() { mixin(MGDPC!(TrProj_Claymore, "TrProj_Claymore TribesGame.Default__TrProj_Claymore")()); }
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
			ScriptFunction InitProjectile() { mixin(MGF!("mInitProjectile", "Function TribesGame.TrProj_Claymore.InitProjectile")()); }
			ScriptFunction SetExplosionEffectParameters() { mixin(MGF!("mSetExplosionEffectParameters", "Function TribesGame.TrProj_Claymore.SetExplosionEffectParameters")()); }
			ScriptFunction PawnEnteredDetonationArea() { mixin(MGF!("mPawnEnteredDetonationArea", "Function TribesGame.TrProj_Claymore.PawnEnteredDetonationArea")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrProj_Claymore.GetMarker")()); }
		}
	}
	@property final auto ref
	{
		float m_fScalarAngle() { mixin(MGPC!(float, 904)()); }
		float m_fDetonationAngle() { mixin(MGPC!(float, 900)()); }
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
