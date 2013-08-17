module UnrealScript.UDKBase.UDKTeleporterBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface UDKTeleporterBase : Teleporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKTeleporterBase")()); }
	private static __gshared UDKTeleporterBase mDefaultProperties;
	@property final static UDKTeleporterBase DefaultProperties() { mixin(MGDPC!(UDKTeleporterBase, "UDKTeleporterBase UDKBase.Default__UDKTeleporterBase")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mInitializePortalEffect;
			ScriptFunction mAccept;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UDKBase.UDKTeleporterBase.PostBeginPlay")()); }
			ScriptFunction InitializePortalEffect() { mixin(MGF!("mInitializePortalEffect", "Function UDKBase.UDKTeleporterBase.InitializePortalEffect")()); }
			ScriptFunction Accept() { mixin(MGF!("mAccept", "Function UDKBase.UDKTeleporterBase.Accept")()); }
		}
	}
	@property final auto ref
	{
		SoundCue TeleportingSound() { mixin(MGPC!("SoundCue", 768)()); }
		ScriptName PortalTextureParameter() { mixin(MGPC!("ScriptName", 760)()); }
		MaterialInstanceConstant PortalMaterialInstance() { mixin(MGPC!("MaterialInstanceConstant", 756)()); }
		MaterialInterface PortalMaterial() { mixin(MGPC!("MaterialInterface", 752)()); }
		Actor PortalViewTarget() { mixin(MGPC!("Actor", 748)()); }
		int TextureResolutionY() { mixin(MGPC!("int", 744)()); }
		int TextureResolutionX() { mixin(MGPC!("int", 740)()); }
		TextureRenderTarget2D TextureTarget() { mixin(MGPC!("TextureRenderTarget2D", 736)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PortalCaptureComponent'!
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void InitializePortalEffect(Actor Dest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Dest;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializePortalEffect, params.ptr, cast(void*)0);
	}
	bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(Functions.Accept, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
