<div class="row-fluid">
          <div class="widget widget-padding span12">
            <div class="widget-header">
              <i class="icon-list-alt"></i><h5>Sunucu Ayarlar覺</h5>
              <div class="widget-buttons">
                  <a href="#" data-title="Gizle/G繹飉ter" data-collapsed="false" class="tip collapse" data-original-title=""><i class="icon-chevron-up"></i></a>
              </div>
            </div>
            <div class="widget-body" align="center">
              <div class="widget-forms clearfix">
                <form class="form-horizontal" method="POST" action="<?=$page->CreatePageLink($cur_page)?>">
				
                  <div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Sunucu Adi</label>
                    <div class="controls" align="right">
                      <input class="span7 pop" name="hostname" data-content="Buraya sunucu ad覺 girebilir de��i��tirebilirsiniz" type="text" value="<?=$oGCP['server.cfg']['hostname']?>">
                    </div>
                  </div>
				  
                  <div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Rcon ��ifresi</label>
                    <div class="controls" align="right">
                      <input class="span7 pop" name="rcon_password" data-content="Bu ��ifre sayesinde Panelden ba��ka ara癟larla sunucunuzu y繹netebilirsiniz(��rnek: HLSW)" type="text" value="<?=$oGCP['server.cfg']['rcon_password']?>">
                    </div>
                  </div>
				 
                  <div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">sv_contact (say /admin yaz覺s覺)</label>
                    <div class="controls" align="right">
                      <input class="span7 pop" name="sv_contact" data-content="Buraya 襤leti��im adresi yazabilirsiniz" type="text" value="<?=$oGCP['server.cfg']['sv_contact']?>">
                    </div>
                  </div>
				  <div align="center">Harita Ayarlar覺</div><br><br>
				  
                  <div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Harita S羹resi (mp_timelimit)</label>
                    <div class="controls" align="right">
                      <input class="span7" name="mp_timelimit" type="text" value="<?=$oGCP['server.cfg']['mp_timelimit']?>" style="width: 50px">
                    </div>
                  </div>

				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Tur S羹resi (mp_roundtime)</label>
                    <div class="controls" align="right">
                      <input class="span7" name="mp_roundtime" type="text" value="<?=$oGCP['server.cfg']['mp_roundtime']?>" style="width: 50px">
                    </div>
                  </div>
				  
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Tur ba��覺 bekleme s羹resi (mp_freezetime)</label>
                    <div class="controls" align="right">
                      <input class="span7" name="mp_freezetime" type="text" value="<?=$oGCP['server.cfg']['mp_freezetime']?>" style="width: 50px">
                    </div>
                  </div>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Ba��lang覺癟 Paras覺 (mp_startmoney)</label>
                    <div class="controls" align="right">
                      <input class="span7" name="mp_startmoney" type="text" value="<?=$oGCP['server.cfg']['mp_startmoney']?>" style="width: 55px">
                    </div>
                  </div>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Sat覺n Alma S羹resi (mp_buytime)</label>
                    <div class="controls" align="right">
                      <input class="span7" name="mp_buytime" type="text" value="<?=$oGCP['server.cfg']['mp_buytime']?>" style="width: 50px">
                    </div>
                  </div>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">C4 Patlama S羹resi (mp_c4timer)</label>
                    <div class="controls" align="right">
                      <input class="span7" name="mp_c4timer" type="text" value="<?=$oGCP['server.cfg']['mp_c4timer']?>" style="width: 50px">
                    </div>
                  </div>
				   <div align="center">Tak覺m Dengeleme Ayarlar覺</div><br><br>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Otomatik Tak覺m Dengeleme (mp_autoteambalance)</label>
                    <div class="controls" align="right">
                     <select name="mp_autoteambalance"><option value="1" <?=$oGCP['server.cfg']['mp_autoteambalance'] == 1 ? "selected" : "" ?>>A癟覺k</option><option value="0" <?=$oGCP['server.cfg']['mp_autoteambalance'] == 0 ? "select" : "" ?>>Kapal覺</option></select>
                    </div><br>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Tak覺m De��i��tirmedeki Oyuncu Fark覺 (mp_limitteams)</label>
                    <div class="controls" align="right">
                     <input class="span7" name="mp_limitteams" type="text" value="<?=$oGCP['server.cfg']['mp_limitteams']?>" style="width: 50px">
                    </div>
					<div align="center">Ses Ayarlar覺</div><br><br>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Konu��malar (sv_voiceenable)</label>
                    <div class="controls" align="right">
                     <select name="sv_voiceenable"><option value="1" <?=$oGCP['server.cfg']['sv_voiceenable'] == 1 ? "selected" : "" ?>>A癟覺k</option><option value="0" <?=$oGCP['server.cfg']['sv_voiceenable'] == 0 ? "selected" : "" ?>>Kapal覺</option></select>
                    </div>
            </div>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Ses Kalitesi (sv_voicequality)</label>
                    <div class="controls" align="right">
                     <select name="sv_voicequality">
				<option value="5" <?=$oGCP['server.cfg']['sv_voicequality'] == 5 ? "selected" : "" ?>>5</option>
				<option value="4" <?=$oGCP['server.cfg']['sv_voicequality'] == 4 ? "selected" : "" ?>>4</option>
				<option value="3" <?=$oGCP['server.cfg']['sv_voicequality'] == 3 ? "selected" : "" ?>>3</option>
				<option value="2" <?=$oGCP['server.cfg']['sv_voicequality'] == 2 ? "selected" : "" ?>>2</option>
				<option value="1" <?=$oGCP['server.cfg']['sv_voicequality'] == 1 ? "selected" : "" ?>>1</option>
			</select>
                    </div>
            </div>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Codec Bi癟imi (sv_voicecodec)</label>
                    <div class="controls" align="right">
                     <select name="sv_voicecodec">
				<option value="voice_speex" <?=$oGCP['server.cfg']['sv_voicecodec'] == "voice_speex" ? "selected" : "" ?>>voice_speex</option>
				<option value="voice_miles" <?=$oGCP['server.cfg']['sv_voicecodec'] == "voice_miles" ? "selected" : "" ?>>voice_miles</option>
			</select>
                    </div>
            </div>
				<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Kar��覺 tak覺m ve 繹l羹ler sesleri duyabilmesi (sv_alltalk)</label>
                    <div class="controls" align="right">
                     <select name="sv_alltalk">
				<option value="1" <?=$oGCP['server.cfg']['sv_alltalk'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['sv_alltalk'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div align="center">Di��er Ayarlar (Bilginiz yoksa Dokunmay覺n!)</div><br><br>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Ayak Sesleri (mp_footsteps)</label>
                    <div class="controls" align="right">
                     <select name="mp_footsteps">
				<option value="1" <?=$oGCP['server.cfg']['mp_footsteps'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['mp_footsteps'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Fener Kullan覺m覺 (mp_flashlight)</label>
                    <div class="controls" align="right">
                     <select name="mp_flashlight">
				<option value="1" <?=$oGCP['server.cfg']['mp_flashlight'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['mp_flashlight'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Tak覺m arkada��覺n覺 繹ld羹rme (mp_friendlyfire)</label>
                    <div class="controls" align="right">
                     <select name="mp_friendlyfire">
				<option value="1" <?=$oGCP['server.cfg']['mp_friendlyfire'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['mp_friendlyfire'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Tak覺m arkada��覺n覺 繹ld羹reni kickleme (mp_autokick)</label>
                    <div class="controls" align="right">
                     <select name="mp_autokick">
				<option value="1" <?=$oGCP['server.cfg']['mp_autokick'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['mp_autokick'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Tak覺m arkada��覺n覺 繹ld羹reni cezaland覺rma (mp_tkpunish)</label>
                    <div class="controls" align="right">
                     <select name="mp_tkpunish">
				<option value="1" <?=$oGCP['server.cfg']['mp_tkpunish'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['mp_tkpunish'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">襤zleyici olma izni (allow_spectators)</label>
                    <div class="controls" align="right">
                     <select name="allow_spectators">
				<option value="1" <?=$oGCP['server.cfg']['allow_spectators'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['allow_spectators'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Kamera A癟覺lar覺 (mp_forcecamera)</label>
                    <div class="controls" align="right">
                     <select name="mp_forcecamera">
				<option value="0" <?=$oGCP['server.cfg']['mp_forcecamera'] == 0 ? "selected" : "" ?>>T羹m Oyuncular覺 G繹rebilir.</option>
				<option value="1" <?=$oGCP['server.cfg']['mp_forcecamera'] == 1 ? "selected" : "" ?>>Sadece Kendi Tak覺m覺n覺n Oyuncular覺n覺 G繹rebilir</option>
				<option value="2" <?=$oGCP['server.cfg']['mp_forcecamera'] == 2 ? "selected" : "" ?>>Kimseyi izleyemez, Sadece olaylar覺 takip eder.</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Num ucunda oyuncu ismi (mp_playerid)</label>
                    <div class="controls" align="right">
                     <select name="mp_playerid">
				<option value="0" <?=$oGCP['server.cfg']['mp_playerid'] == 0 ? "selected" : "" ?>>Tam isim g繹z羹ks羹n</option>
				<option value="1" <?=$oGCP['server.cfg']['mp_playerid'] == 1 ? "selected" : "" ?>>Tak覺m oyuncunun ismi g繹z羹ks羹n</option>
				<option value="2" <?=$oGCP['server.cfg']['mp_playerid'] == 2 ? "selected" : "" ?>>襤sim G繹z羹kmesin</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Sprey Kullan覺m Aral覺��覺 (decalfrequency)</label>
                    <div class="controls" align="right">
                     <input class="span7" name="decalfrequency" type="text" value="<?=$oGCP['server.cfg']['decalfrequency']?>" style="width: 50px">
                    </div>
            </div>
			<div align="center">sXe-Injected Ayarlar覺</div><br><br>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">sXe Durumu (__sxei_required)</label>
                    <div class="controls" align="right">
                    <select name="__sxei_required">
				<option value="1" <?=$oGCP['server.cfg']['__sxei_required'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="2" <?=$oGCP['server.cfg']['__sxei_required'] == 2 ? "selected" : "" ?>>Fake sXe</option>
				<option value="0" <?=$oGCP['server.cfg']['__sxei_required'] == 0 ? "selected" : "" ?>>Opsiyonel</option>
				<option value="-1" <?=$oGCP['server.cfg']['__sxei_required'] == -1 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">16bpp Korumas覺 (__sxei_16bpp)</label>
                    <div class="controls" align="right">
                     <select name="__sxei_16bpp">
				<option value="1" <?=$oGCP['server.cfg']['__sxei_16bpp'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['__sxei_16bpp'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Antiwall Korumas覺 (__sxei_antiwall)</label>
                    <div class="controls" align="right">
                     <select name="__sxei_antiwall">
				<option value="1" <?=$oGCP['server.cfg']['__sxei_antiwall'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['__sxei_antiwall'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
			<div class="control-group">
                    <label class="control-label" style="text-align:left;width: 50%">Antispeed Korumas覺 (__sxei_antispeed)</label>
                    <div class="controls" align="right">
                     <select name="__sxei_antispeed">
				<option value="1" <?=$oGCP['server.cfg']['__sxei_antispeed'] == 1 ? "selected" : "" ?>>A癟覺k</option>
				<option value="0" <?=$oGCP['server.cfg']['__sxei_antispeed'] == 0 ? "selected" : "" ?>>Kapal覺</option>
			</select>
                    </div>
            </div>
              </div>
            </div>
          </div>
        </div>
	<div class="widget-footer" align="right">
               <button class="btn btn-primary" type="submit" name="yardir">Kaydet</button>
               <a href="<?=$page->CreatePageLink($cur_page)?>"><button class="btn" type="button">Ayarlar覺 S覺f覺rla</button></a>
            </div>