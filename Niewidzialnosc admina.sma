#include <amxmodx>
#include <amxmisc>
#include <fakemeta> 

#define PLUGIN "niewidzialnosc admina"
#define VERSION "1.0"
#define AUTHOR ".minD"


public plugin_init()
{
register_plugin(PLUGIN, VERSION, AUTHOR)
register_clcmd("amx_niewidzialnosc", "niewidzialnosc") 
register_clcmd("amx_niewidzialnoscoff", "niewidzialnoscoff")

}
public niewidzialnosc(id)
{
	if ( get_user_flags(id) & ADMIN_IMMUNITY ) 
	
	set_pev(id, pev_renderfx, kRenderFxGlowShell)
	set_pev(id, pev_rendermode, kRenderTransAlpha)
	set_pev(id, pev_renderamt, 0.0)
}
public niewidzialnoscoff(id)
{
	if ( get_user_flags(id) & ADMIN_IMMUNITY ) 
	
	set_pev(id, pev_renderfx, kRenderFxGlowShell)
	set_pev(id, pev_rendermode, kRenderTransAlpha)
	set_pev(id, pev_renderamt, 255.0)
}