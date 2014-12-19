local t = Def.ActorFrame {
--P1--
--FCRingP1--
	LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237+25;y,SCREEN_CENTER_Y-120;zoom,0);
		AnimateCommand=cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,170);
		OnCommand=function(self)
		local pss = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1");
			if pss:FullComboOfScore('TapNoteScore_W4') then
				self:playcommand("Animate");
				self:diffuse(color("#10e0f1"));
			elseif pss:FullComboOfScore('TapNoteScore_W3') then
				self:playcommand("Animate");
				self:diffuse(color("#01e603"));
			elseif pss:FullComboOfScore('TapNoteScore_W2') then
				self:playcommand("Animate");
				self:diffuse(color("#f8fd6d"));
			elseif pss:FullComboOfScore('TapNoteScore_W1') then
				self:playcommand("Animate");
				self:diffuse(color("#fefed0"));
			end;
		end;

--GRADEP1---

	LoadActor("Grade_3A.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("Grade_3A.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_2A.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_A.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("Grade_B.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_C.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};



	LoadActor("Grade_D.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("Grade_E.png")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207-30;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	
--FCTextP1--	
	LoadActor("FullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local pss = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or (staw =="StageAward_SingleDigitW4") or (staw =="StageAward_OneW4") or (staw =="StageAward_FullComboW4") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("FullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or (staw =="StageAward_SingleDigitW4") or (staw =="StageAward_OneW4") or (staw =="StageAward_FullComboW4") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	
	LoadActor("PerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("MarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);

	};
	LoadActor("MarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-237;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
--P2--
--FCRingP2--
	LoadActor("GoodFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW4") or (staw =="StageAward_OneW4") or (staw =="StageAward_FullComboW4") ) then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("GoodFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW4") or (staw =="StageAward_OneW4") or (staw =="StageAward_FullComboW4") ) then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423+25;y,SCREEN_CENTER_Y-120;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.5;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};


--GradeP2--

	LoadActor("Grade_3A.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("Grade_3A.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_2A.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_A.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("Grade_B.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_C.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};



	LoadActor("Grade_D.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("Grade_E.png")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-90;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.5))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	
--FCTextP2--
	LoadActor("FullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or (staw =="StageAward_SingleDigitW4") or (staw =="StageAward_OneW4") or (staw =="StageAward_FullComboW4")) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("FullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") or (staw =="StageAward_SingleDigitW4") or (staw =="StageAward_OneW4") or (staw =="StageAward_FullComboW4") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	
	LoadActor("PerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("MarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+423;y,SCREEN_CENTER_Y-30;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
};
return t;