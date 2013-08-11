module UnrealScript.IpDrv.WebServer;

import ScriptClasses;
import UnrealScript.IpDrv.WebApplication;
import UnrealScript.Engine.Actor;
import UnrealScript.IpDrv.TcpLink;

extern(C++) interface WebServer : TcpLink
{
	public @property final auto ref int ConnID() { return *cast(int*)(cast(size_t)cast(void*)this + 868); }
	public @property final auto ref int DefaultApplication() { return *cast(int*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref ScriptString ApplicationPaths() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 672); }
	public @property final auto ref int ExpirationSeconds() { return *cast(int*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref int ConnectionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 864); }
	public @property final auto ref WebApplication ApplicationObjects() { return *cast(WebApplication*)(cast(size_t)cast(void*)this + 824); }
	public @property final auto ref ScriptString ServerURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref int MaxConnections() { return *cast(int*)(cast(size_t)cast(void*)this + 800); }
	public @property final auto ref int ListenPort() { return *cast(int*)(cast(size_t)cast(void*)this + 796); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 792) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 792) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 792) &= ~0x1; } return val; }
	public @property final auto ref ScriptString Applications() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref ScriptString ServerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 540); }
	final WebApplication GetApplication(ScriptString URI, ScriptString* SubURI)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URI;
		*cast(ScriptString*)&params[12] = *SubURI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34118], params.ptr, cast(void*)0);
		*SubURI = *cast(ScriptString*)&params[12];
		return *cast(WebApplication*)&params[24];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34251], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34256], cast(void*)0, cast(void*)0);
	}
	final void GainedChild(Actor C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34258], params.ptr, cast(void*)0);
	}
	final void LostChild(Actor C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34260], params.ptr, cast(void*)0);
	}
}
