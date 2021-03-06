--[[
	Myte2 Server Files
	PACHI | Tunga
	https://forum.turkmmo.com/uye/2127751-pachi/
--]]
quest changelook begin
	state start begin
		when 20406.chat."Yansıtma " with utils.is_feature_changelook_enabled() == true begin
			say_title(mob_name(20406))
			say("")
			say("Yansıtma sistemi ekipmanlarınızın görünüşünü ")
			say("kalıcı olarak değiştirmeye yarar. Yansıttığınız ekipman")
			say("ekipmanınızın seviyesinden yüksek olsa bile,")
			say("görüşünü değiştirir.")
			say("Devam etmek istiyor musun?")
			say("")
			local confirm = select("Evet", "Hayır")
			if confirm == 2 then
				return
			end
			
			setskin(NOWINDOW)
			pc.open_changelook(false)
		end
		
		when 20406.chat."Binek dönüşümü " with utils.is_feature_changelook_enabled() == true begin
			setskin(NOWINDOW)
			pc.open_changelook(true)
		end
	end
end