ialdatatable={  }--[[ ["ial_butt_gC1"]=0, ["somedata"]=0 ]]
ialtabulator={  }
--ial_butt_run=0

do
  local ial_itemamount=0
function ial_butt(ial_bstyle, ial_bconfig, ial_bid, ial_btxt, ial_btxtsz, ial_bx,ial_by, ial_btx, ial_bty, ial_bwidth, ial_bheight,
  ial_bclr, ial_bclr2, ial_bclr3, ial_btclr, ial_btclr2, ial_btclr3)           --[[ial_butt]]
  mousex, mousey = love.mouse.getPosition( ) --[[doesn't work if outside of function ial_butt]]

  --ial_butt_run=ial_butt_run+1

  ial_window_hasmousefocus = love.window.hasMouseFocus( )
  ial_window_haskeyboardfocus = love.window.hasFocus( )
  ial_window_isvisible = love.window.isVisible( )--[[visible equals not minimized and/or hidden]]
  --print(mousex, mousey)--[[delete that later]]
  if ial_bstyle=="btest" then
    return print("ial_butt function btest")
  elseif ial_bstyle=="-" then                                                --[[basic theme]]
    if ial_bconfig=="rect" then                                      --[[basic RECTANGLE button]]
      do
        local ial_mouseover=false
        local ial_mouseclicked=false
      if ial_bwidth==nil or ial_bwidth==n then --[[button width  all the nils begin here]]

        ial_bxsize=string.len(ial_btxt) --[[THERE IS PROBLEM WITH EURO SYMBOL €]]
        if (ial_btxtsz==1) then

        elseif (ial_btxtsz==17) then
          ial_bwidth=(ial_bxsize*10)+3
        end
      end
      if ial_bheight==nil or ial_bheight==n then --[[button height]]
        if (ial_btxtsz==1) then

        elseif (ial_btxtsz==17) then
          ial_bheight=ial_btxtsz+3
        end
      end
      if ial_btx==nil or ial_btx==n then ial_btx=ial_bx+1 end
      if ial_bty==nil or ial_bty==n then ial_bty=ial_by-1 end
      if ial_btxtsz==nil or ial_btxtsz==n then ial_btxtsz=17 end
      if ial_bclr==nil or ial_bclr==n then ial_bclr="Grey50" end
      if ial_bclr2==nil or ial_bclr2==n then ial_bclr2="Grey45" end
      if ial_bclr3==nil or ial_bclr3==n then ial_bclr3="Grey10" end
      if ial_btclr==nil or ial_btclr==n then ial_btclr="Grey25" end
      if ial_btclr2==nil or ial_btclr2==n then ial_btclr2="Grey20" end
      if ial_btclr3==nil or ial_btclr3==n then ial_btclr3="black" end
                                                         --[[nils end here]]

      if ( mousex>=ial_bx and mousex<=(ial_bx+ial_bwidth) and mousey>=ial_by and mousey<=(ial_by+ial_bheight) ) then
        ial_mouseover=true
        ial_butt_cc=ial_bclr2
        ial_butt_txtcc=ial_btclr2
      else
        ial_mouseover=false
      end

      if ial_mouseover==true and ial_window_hasmousefocus==true and ial_window_haskeyboardfocus==true and ial_mouseclicked==false then
        ial_butt_cc=ial_bclr2
        ial_butt_txtcc=ial_btclr2
      elseif ial_mouseover==true and ial_mouseclicked==true then
        print("test")
        ial_butt_cc=ial_bclr3
        ial_butt_txtcc=ial_btclr3
      else
        ial_mouseover=false
        ial_butt_cc=ial_bclr
        ial_butt_txtcc=ial_btclr
      end

      if ( mousex>=ial_bx and mousex<=(ial_bx+ial_bwidth) and mousey>=ial_by and mousey<=(ial_by+ial_bheight) ) then
        function love.mousepressed(x,y,mousebutton,istouch)
          if ( mousex>=ial_bx and mousex<=(ial_bx+ial_bwidth) and mousey>=ial_by and mousey<=(ial_by+ial_bheight) ) then
            if ial_mouseover==true then
              ial_butt_cc=ial_bclr3
              ial_butt_txtcc=ial_btclr3
              ial_mouseclicked=true
              print(ial_bx)
            end
          end
        end
      end

      ial_itemamount=ial_itemamount+1
      ialtabulator[ial_itemamount]="iaitem"..ial_itemamount
      print(ialtabulator[ial_itemamount])

      ialdatatable["ial_butt_gC1"],ialdatatable["ial_butt_gC2"],ialdatatable["ial_butt_gC3"],ialdatatable["ial_butt_gC4"]=love.graphics.getColor( )
      --ial_b_am=print(ial_butt_run)
      ial_b_gsc=love.graphics.setColor( ial_html_cn(ial_butt_cc,1) )
      ial_b_gr=love.graphics.rectangle("fill", ial_bx, ial_by, ial_bwidth, ial_bheight )--[[button]]
      ial_b_gsc2=love.graphics.setColor( ial_html_cn(ial_butt_txtcc,1) )
      ial_b_gnt=love.graphics.newText( ial_fnt("dj_sans",ial_btxtsz), ial_btxt )
      ial_b_dt=love.graphics.draw(ial_b_gnt,ial_btx,ial_bty)--[[text]]

      ial_b_gscend=love.graphics.setColor( ialdatatable["ial_butt_gC1"],ialdatatable["ial_butt_gC2"],ialdatatable["ial_butt_gC3"],ialdatatable["ial_butt_gC4"] )
      ialdatatable["ial_butt_gC1"],ialdatatable["ial_butt_gC2"],ialdatatable["ial_butt_gC3"],ialdatatable["ial_butt_gC4"]=nil,nil,nil,nil
      end
      return ial_b_gnt,ial_b_gsc,ial_b_gr,ial_b_gsc2,ial_b_dt
    elseif ial_bconfig=="cc" then                                      --[[basic CIRCLE button]]
      do
        local ial_mouseover=false
        local ial_mouseclicked=false
        local ial_mousereleased=true
        ial_testvar_glob="q"
      if ial_bwidth==nil or ial_bwidth==n then --[[button width  all the nils begin here]]
        ial_bxsize=string.len(ial_btxt) --[[THERE IS PROBLEM WITH EURO SYMBOL €]]
        if (ial_btxtsz==1) then

        elseif (ial_btxtsz==17) then
          ial_bwidth=(ial_bxsize*5)+1
        end
      end
      if ial_bheight==nil or ial_bheight==n then ial_bheight=9999--[[angles]] end
      if ial_btx==nil or ial_btx==n then ial_btx=ial_bx-30 end
      if ial_bty==nil or ial_bty==n then ial_bty=ial_by-12 end
      if ial_btxtsz==nil or ial_btxtsz==n then ial_btxtsz=17 end
      if ial_bclr==nil or ial_bclr==n then ial_bclr="Grey50" end
      if ial_btclr==nil or ial_btclr==n then ial_btclr="Grey25" end
      if ial_bclr2==nil or ial_bclr2==n then ial_bclr2="Grey45" end--[[wiem czemu ale nie wiem dlaczego losowy przycisk a nie ostatni SPRAWDZIĆ!!]]
      if ial_bclr3==nil or ial_bclr3==n then ial_bclr3="Grey10" end
      if ial_btclr2==nil or ial_btclr2==n then ial_btclr2="Grey20" end
      if ial_btclr3==nil or ial_btclr3==n then ial_btclr3="Black" end
                                                         --[[nils end here]]

      if ial_distanceBe(ial_bx, ial_by, love.mouse.getX(), love.mouse.getY()) < ial_bwidth then
        ial_mouseover=true
        --[[if ial_mouseover==true and ial_window_hasmousefocus==true and ial_window_haskeyboardfocus==true and ial_mouseclicked==false then
          ial_butt_cc=ial_bclr2
          ial_butt_txtcc=ial_btclr2
        end
        if ial_mouseover==true and ial_window_hasmousefocus==true and ial_window_haskeyboardfocus==true and ial_mouseclicked==true then
          ial_butt_cc=ial_bclr3
          ial_butt_txtcc=ial_btclr3
        end]]
      else
        ial_mouseover=false
        --[[ial_butt_cc=ial_bclr
        ial_butt_txtcc=ial_btclr]]
      end

      if ial_distanceBe(ial_bx,ial_by,love.mouse.getX(),love.mouse.getY()) < ial_bwidth then
        function love.mousepressed(x,y,mousebutton,istouch)
          if ial_distanceBe(ial_bx,ial_by,love.mouse.getX(),love.mouse.getY()) < ial_bwidth then
            if ial_mouseover==true then
              ial_mouseclicked=true
              ial_mousereleased=false
              ial_testvar_glob="w"
              ial_butt_cc=ial_bclr3
              ial_butt_txtcc=ial_btclr3
              print(ial_bx)
              print(ial_testvar_glob)
              print(ial_mouseclicked,ial_mousereleased)
              print(ial_butt_cc,ial_butt_txtcc)
            end
          end
        end
      end

      function love.mousereleased(mouserx, mousery, button)
        ial_mouseclicked=false
        ial_mousereleased=true
        print(ial_mousereleased)
      end

      if ial_mouseover==true and ial_window_hasmousefocus==true and ial_window_haskeyboardfocus==true and ial_mouseclicked==false then
        ial_butt_cc=ial_bclr2
        ial_butt_txtcc=ial_btclr2
      end

      if ial_mouseover==false and ial_mouseclicked==false then
        ial_butt_cc=ial_bclr
        ial_butt_txtcc=ial_btclr
      end

      -- put there data about table
      ialdatatable["ial_butt_gC1"],ialdatatable["ial_butt_gC2"],ialdatatable["ial_butt_gC3"],ialdatatable["ial_butt_gC4"]=love.graphics.getColor( )
      --ial_b_am=print(ial_butt_run)
      ial_b_gsc=love.graphics.setColor( ial_html_cn(ial_butt_cc,1) )
      ial_b_gr=love.graphics.circle("fill", ial_bx, ial_by, ial_bwidth, ial_bheight)--[[button]]
      ial_b_gsc2=love.graphics.setColor( ial_html_cn(ial_butt_txtcc,1) )
      ial_b_gnt=love.graphics.newText( ial_fnt("dj_sans",ial_btxtsz), ial_btxt )
      ial_b_dt=love.graphics.draw(ial_b_gnt,ial_btx,ial_bty)--[[text]]

      ial_b_gscend=love.graphics.setColor( ialdatatable["ial_butt_gC1"],ialdatatable["ial_butt_gC2"],ialdatatable["ial_butt_gC3"],ialdatatable["ial_butt_gC4"] )
      ialdatatable["ial_butt_gC1"],ialdatatable["ial_butt_gC2"],ialdatatable["ial_butt_gC3"],ialdatatable["ial_butt_gC4"]=nil,nil,nil,nil
      end
      return ial_b_gnt,ial_b_gsc,ial_b_gr,ial_b_gsc2,ial_b_dt
    end

  elseif ial_bstyle=="bmard" then
    return print("ial_butt function bmard")
  end
end


function ial_distanceBe(ial_x1,ial_y1,ial_x2,ial_y2)
  return math.sqrt((ial_y2-ial_y1)^2+(ial_x2-ial_x1)^2)
end

function ial_fnt(f_fnt_name,f_fnt_size)                                                                 --[[ial_fnt]]
  if f_fnt_name=="dj_sans" then--[[monospaced fonts under SIL Open Font License 1.1]]
    return love.graphics.newFont("/libraries/InterActiveLibrary/dejavu_sans_mono_book.ttf", f_fnt_size)
  elseif f_fnt_name=="GNU_unifont" then
    return love.graphics.newFont("/libraries/InterActiveLibrary/GNU_unifont_13.0.02.ttf", f_fnt_size)
  end
end

end --[["do" before ial_butt function end]]

function ial_html_cn(ial_html_cn_c,ial_html_cn_a)                                                   --[[ial_html_cn]]
  if string.lower(ial_html_cn_c)==string.lower"Purple_EY" then
    return 94, 21, 191,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"yourcolorname" then --[[It's a sample. Edit this as you want.]]
    return xxred, xxgreen, xxblue,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"yourcolorname" then
    return xxred, xxgreen, xxblue,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Desolate_EY" then
    return 66/255, 66/255, 36/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkSepia_EY" then
    return 115/255, 113/255, 63/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumSepia_EY" then
    return 183/255, 180/255, 123/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightSepia_EY" then
    return 202/255, 200/255, 159/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey95" then
    return 242/255, 242/255, 242/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey90" then
    return 230/255, 230/255, 230/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey85" then
    return 217/255, 217/255, 217/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey80" then
    return 204/255, 204/255, 204/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey75" then
    return 191/255, 191/255, 191/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey70" then
    return 179/255, 179/255, 179/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey65" then
    return 166/255, 166/255, 166/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey60" then
    return 153/255, 153/255, 153/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey55" then
    return 140/255, 140/255, 140/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey50" then
    return 128/255, 128/255, 128/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey45" then
    return 115/255, 115/255, 115/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey40" then
    return 102/255, 102/255, 102/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey35" then
    return 89/255, 89/255, 89/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey30" then
    return 77/255, 77/255, 77/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey25" then
    return 64/255, 64/255, 64/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey20" then
    return 51/255, 51/255, 51/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey15" then
    return 38/255, 38/255, 38/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey10" then
    return 26/255, 26/255, 26/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Grey05" then
    return 13/255, 13/255, 13/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Black" then--[[html colors sorted by HEX number from w3schools.com/colors/colors_hex.asp]]
    return 0, 0, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Navy" then
    return 0, 0, 128/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkBlue" then
    return 0, 0, 139/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumBlue" then
    return 0, 0, 205/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Blue" then
    return 0, 0, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkGreen" then
    return 0, 100/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Green" then
    return 0, 128/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Teal" then
    return 0, 128/255, 128/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkCyan" then
    return 0, 139/255, 139/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DeepSkyBlue" then
    return 0, 191/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkTurquoise" then
    return 0, 206/255, 209/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumSpringGreen" then
    return 0, 250/255, 154/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Lime" then
    return 0, 255/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SpringGreen" then
    return 0, 255/255, 127/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Aqua" or string.lower(ial_html_cn_c)==string.lower"Cyan" then
    return 0, 255/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MidnightBlue" then
    return 25/255, 25/255, 112/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DodgerBlue" then
    return 30/255, 144/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightSeaGreen" then
    return 32/255, 178/255, 170/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"ForestGreen" then
    return 34/255, 139/255, 34/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SeaGreen" then
    return 46/255, 139/255, 87/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkSlateGray" then
    return 47/255, 79/255, 79/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LimeGreen" then
    return 50/255, 205/255, 50/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumSeaGreen" then
    return 60/255, 179/255, 113/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Turquoise" then
    return 64/255, 224/255, 208/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"RoyalBlue" then
    return 65/255, 105/255, 225/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SteelBlue" then
    return 70/255, 130/255, 180/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkSlateBlue" then
    return 72/255, 61/255, 139/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumTurquoise" then
    return 72/255, 209/255, 204/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Indigo" then
    return 75/255, 0, 130/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkOliveGreen" then
    return 85/255, 107/255, 47/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"CadetBlue" then
    return 95/255, 158/255, 160/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"CornflowerBlue" then
    return 100/255, 149/255, 237/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"RebeccaPurple" then
    return 102/255, 51/255, 153/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumAquaMarine" then
    return 102/255, 205/255, 170/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DimGray" or string.lower(ial_html_cn_c)==string.lower"DimGrey" then
    return 105/255, 105/255, 105/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SlateBlue" then
    return 106/255, 90/255, 205/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"OliveDrab" then
    return 107/255, 142/255, 35/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SlateGray" or string.lower(ial_html_cn_c)==string.lower"SlateGrey" then
    return 112/255, 128/255, 144/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightSlateGray" or string.lower(ial_html_cn_c)==string.lower"LightSlateGrey" then
    return 119/255, 136/255, 153/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumSlateBlue" then
    return 123/255, 104/255, 238/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LawnGreen" then
    return 124/255, 252/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Chartreuse" then
    return 127/255, 255/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Aquamarine" then
    return 127/255, 255/255, 212/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Maroon" then
    return 128/255, 0, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Purple" then
    return 128/255, 0, 128/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Olive" then
    return 128/255, 128/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Gray" or string.lower(ial_html_cn_c)==string.lower"Grey" then
    return 128/255, 128/255, 128/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SkyBlue" then
    return 135/255, 206/255, 235/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightSkyBlue" then
    return 135/255, 206/255, 250/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"BlueViolet" then
    return 138/255, 43/255, 226/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkRed" then
    return 139/255, 0, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkMagenta" then
    return 139/255, 0, 139/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SaddleBrown" then
    return 139/255, 69/255, 19/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkSeaGreen" then
    return 143/255, 188/255, 143/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightGreen" then
    return 144/255, 238/255, 144/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumPurple" then
    return 147/255, 112/255, 219/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkViolet" then
    return 148/255, 0, 211/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PaleGreen" then
    return 152/255, 251/255, 152/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkOrchid" then
    return 153/255, 50/255, 204/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"YellowGreen" then
    return 154/255, 205/255, 50/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Sienna" then
    return 160/255, 82/255, 45/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Brown" then
    return 165/255, 42/255, 42/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkGray" or string.lower(ial_html_cn_c)==string.lower"DarkGrey" then
    return 169/255, 169/255, 169/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightBlue" then
    return 173/255, 216/255, 230/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"GreenYellow" then
    return 173/255, 255/255, 47/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PaleTurquoise" then
    return 175/255, 238/255, 238/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightSteelBlue" then
    return 176/255, 196/255, 222/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PowderBlue" then
    return 176/255, 224/255, 230/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"FireBrick" then
    return 178/255, 34/255, 34/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkGoldenRod" then
    return 184/255, 134/255, 11/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumOrchid" then
    return 186/255, 85/255, 211/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"RosyBrown" then
    return 188/255, 143/255, 143/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkKhaki" then
    return 189/255, 183/255, 107/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Silver" then
    return 192/255, 192/255, 192/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MediumVioletRed" then
    return 199/255, 21/255, 133/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"IndianRed" then
    return 205/255, 92/255, 92/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Peru" then
    return 205/255, 133/255, 63/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Chocolate" then
    return 210/255, 105/255, 30/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Tan" then
    return 210/255, 180/255, 140/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightGray" or string.lower(ial_html_cn_c)==string.lower"LightGrey" then
    return 211/255, 211/255, 211/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Thistle" then
    return 216/255, 191/255, 216/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Orchid" then
    return 218/255, 112/255, 214/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"GoldenRod" then
    return 218/255, 165/255, 32/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PaleVioletRed" then
    return 219/255, 112/255, 147/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Crimson" then
    return 220/255, 20/255, 60/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Gainsboro" then
    return 220/255, 220/255, 220/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Plum" then
    return 221/255, 160/255, 221/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"BurlyWood" then
    return 222/255, 184/255, 135/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightCyan" then
    return 224/255, 255/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Lavender" then
    return 230/255, 230/255, 250/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkSalmon" then
    return 233/255, 150/255, 122/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Violet" then
    return 238/255, 130/255, 238/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PaleGoldenRod" then
    return 238/255, 232/255, 170/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightCoral" then
    return 240/255, 128/255, 128/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Khaki" then
    return 240/255, 230/255, 140/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"AliceBlue" then
    return 240/255, 248/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"HoneyDew" then
    return 240/255, 255/255, 240/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Azure" then
    return 240/255, 255/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SandyBrown" then
    return 244/255, 164/255, 96/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Wheat" then
    return 245/255, 222/255, 179/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Beige" then
    return 245/255, 245/255, 220/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"WhiteSmoke" then
    return 245/255, 245/255, 245/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MintCream" then
    return 245/255, 255/255, 250/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"GhostWhite" then
    return 248/255, 248/255, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Salmon" then
    return 250/255, 128/255, 114/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"AntiqueWhite" then
    return 250/255, 235/255, 215/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Linen" then
    return 250/255, 240/255, 230/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightGoldenRodYellow" then
    return 250/255, 250/255, 210/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"OldLace" then
    return 253/255, 245/255, 230/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Red" then
    return 255/255, 0, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Fuchsia" or string.lower(ial_html_cn_c)==string.lower"Magenta" then
    return 255/255, 0, 255/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DeepPink" then
    return 255/255, 20/255, 147/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"OrangeRed" then
    return 255/255, 69/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Tomato" then
    return 255/255, 99/255, 71/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"HotPink" then
    return 255/255, 105/255, 180/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Coral" then
    return 255/255, 127/255, 80/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"DarkOrange" then
    return 255/255, 140/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightSalmon" then
    return 255/255, 160/255, 122/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Orange" then
    return 255/255, 165/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightPink" then
    return 255/255, 182/255, 193/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Pink" then
    return 255/255, 192/255, 203/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Gold" then
    return 255/255, 215/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PeachPuff" then
    return 255/255, 218/255, 185/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"NavajoWhite" then
    return 255/255, 222/255, 173/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Moccasin" then
    return 255/255, 228/255, 181/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Bisque" then
    return 255/255, 228/255, 196/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"MistyRose" then
    return 255/255, 228/255, 225/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"BlanchedAlmond" then
    return 255/255, 235/255, 205/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"PapayaWhip" then
    return 255/255, 239/255, 213/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LavenderBlush" then
    return 255/255, 240/255, 245/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"SeaShell" then
    return 255/255, 245/255, 238/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Cornsilk" then
    return 255/255, 248/255, 220/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LemonChiffon" then
    return 255/255, 250/255, 205/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"FloralWhite" then
    return 255/255, 250/255, 240/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Snow" then
    return 255/255, 250/255, 250/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Yellow" then
    return 255/255, 255/255, 0,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"LightYellow" then
    return 255/255, 255/255, 224/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"Ivory" then
    return 255/255, 255/255, 240/255,ial_html_cn_a
  elseif string.lower(ial_html_cn_c)==string.lower"White" then
    return 1, 1, 1,ial_html_cn_a
  end
end

function love.resize(ial_resizew, ial_resizeh)
  print(("Window resized to width: %d and height: %d."):format(ial_resizew, ial_resizeh))
end
