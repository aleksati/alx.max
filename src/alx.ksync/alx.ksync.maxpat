{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 91.0, 126.0, 819.0, 629.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 262.0, 197.0, 22.0 ],
					"text" : "current_phases #0_current_phases"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 165.0, 231.5, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 485.0, 446.0, 275.0, 48.0 ],
					"text" : "currently my best way, but is quite hacky. Dont know how to better transform 0.1hz cycles into other desired freqs "
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 13433, "png", "IBkSG0fBZn....PCIgDQRA..DnF....qHX....vHIoDu....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wY6c+7prqkVvG+Ye3hRq2YNPvI6TfCZE7ufFYm7NvdfB8.oQPwtRdcxUbTC53JYnhPOQ7ZOoSJ7+flF45.IY6rdPi9BhHMJImY8HmbNSqJuC12UNoRkjJ+XkjUR99A1bO2yYuyNU9wZsxSdVOqmtb4xGd26d2mK........Xwb850O9tkdm...PexW5c.....fQg.0..fMjmV5c.HBwKC..XSfNzWJDnF...nWDuL..fM.5PeoPfZ........LDe1RuC..r2jkkImOetw+8iGOJVVVU9aykpuUiff.44met0eW1110rs...1YtuaTrpvIPru7Dq5S..yKOOOIJJpw+caaaINNt0sQTTj3448veWggghqqaO2CA.1A349..fA550qej.0..Lyxxxjjjjh++5B3RbbrXaa+vswqu9pjjjHYYYE+a111hsss7xKuz51...Mff3fIDWdATGtyPg.0..rvRRRDGGm696ccckvvvNsMxxxjCGNHh73.7rWQW+...XKiw5rcb850ORwDF.XAoxDFee+a96KmwMOhpFz355RPZZ.CbA...aV4LVmsFBTScX4hG.yjWe8UQj2JfvkCxRVVlDDDzosgpd27xKun6cOLTzOBPOvML..iBQoYyg.0TGtPG.yjjjjhUloSmNcy+VaEb3xTA6growfrK5GgGtF5xt3FF..fNi.0..rPTEAX0TWRUDfUpVzgaa6HhvxvMlY7v0....SgoOPM7B2..pkp9zTdJKc73wa9d5xzeJKKikfa..SDiCF..CvzGnFdgaXvXzMXaqtorT0ouTRRRqYUiIVeZVK24tV1OAvJFiCF..CfgO0mXXz6aL5FrsUt9znXYYcW1wb974F2FlX8oYsbm6ZY+DFDFVhYgyG..KOZKdRX3ApggQO43FKfEQ05SSYUKpvskQMTeZ.lQLrDyBmO..VdzV7jvvCTClbbiEvhnt5Sihkk0cEU3lVAnn9z....fIGuf+YEApA.XA7norT0rpothJrIVeZ....vFDuf+YEApA.XATW8oortrTcah0mF...X5H0H.Lce1RuC..yRa0CktvxxpS0Kkx+dZ56WM8f551bsHKKSxxxdX.VNd73MGmBBBt4mg5SClO4BuJM.fsBZOeVQWnX.HPM.yNys05ff.w22eTaivvvGVyTd5o9842xxRRSSGwdkYQEfkGMkkpFHGUV0n96o9zXdL26tGqs4mJsX6dRG..5.8QfAP6S8o+m+m+G4K+xuT9xu7KKda3.nLys059bOaSeJdTfCFR6BasfQz0orT0kp6rrrhkpapOMlIy8taTk1R7+cyIclpD...ykmtb4xGd26d2mqiM1O7G9Cku3K9ha9696+6+6k+7+7+bcr42U3EzgkR4oZSVVlDDDTavUrsskiGOdyztoOS6oymO23JYjHuEblWd4kVqiKqUGNbPrrrj333G98lkkIGNbn3+WkcQdddRTTjjll17wGZHA..6Lz0G.V6td85G0VfZ9e+e+ekesesesZ+29E+heg7q+q+qO1eE.XAzzzgJOebuc0pAfPj2BNyoSm1bAl4Sda3iO8zShqqqDFF1oeJGGmaBfVXXXQ.zF64A.....XNtd85G01Te5m8y9YM9u8u8u8uoqeM.XlUWwEVGARwyyq3OaaaKwwwRXX3FNHMhHxSCZJKUco5974yTeZ...fYi2kDvfoshI7uxuxuRi+a+R+R+R55WC.lQ0sjPKx3pYLIIIhmmWwzoJNNdWs7ROjkTa0TJScLqqEiX...fECyAMfAqSYTSWBF525a8sZbkb4a8s9V8YeB.FhlJ7uCM.AIIIhiiSwRScZZpQEjllaqSeuRH0p1TexbHKKq6xpFQ5Wvd.....v5PmBTSWCFZbb7M0hle0e0eU4m7S9Ixu7u7u7P12.vBSk8GUMj.D333HNNNhHh366KwwwF2zbp415zyqDJJJRxxxFzm65NlaZG+vLZmlN46zO1..ZEskBX9z1TeRj2dK6+hewuP9u9u9ujqWuJ+1+1+15byCfYlNpOMYYYhmmWw1ZMLUmlhULhxKs1CYIJ2xxRrssKNNR8oYmamlN46zO1..ZEsktGv5e1ZmVCTix27a9MmhMK.lYis9znlpSh7VfFBCCM9fzHh95VKIIQd80WkjjjaNVljjHGNbnXJPU2zZpNmNch5SCvHwPWA.v1G8zs1oskm6kCC4BXJT2xmsHcOiXJurdqVUm1aNb3vCydl9rLcKxmVptSSSYpOAfMpodrcL1Q..Xttd85GmjLpYdQGs.iQSCWUMMcppKAoQELAQdqdzz0LFYqoofSUN3M8MXKpf5PPZ.v10TO1NF6H..Laaf.0.fwnogqNj5SyZrdzLkZ530XBxxzDfFd6x.XehV+..fIpSq5S.X+ou0mFUcWIIIQrrr18AoYcgGSAX7XcTYMhV+..TneLSBApwTv8EvfzTcUooBXaPPPQQCVDxjF.rGwi7C.f0L5GyjPfZLEbeALH8o9z333TTzfUpKab..zId+F...Xqh.0.f6zk5SiZo2ttu2lBzC.ftv62....aUTLgAvcdT8oQEjl194yxxXkIB.....nmHiZ.vMdT8owyyqHHM999EKWzUQV0rewTRA....X3d5xkKe3cu6ce9Ruif9fESRLcBBBtqlynVEmZZo29vgC0FfmzzTxpF....fsNdDUs450qejLpYUh6.vzooBAbaK81MsrcSV0.....rCvinpUjQM.3FO8TysxZaaKwww282mkkINNN2kUMM88C..f8BdM6..8w0qW+3tJPMzMAP6xxxjCGNT6+luuub5zoF+Y877jnnn696ql8MlpjjDx.nu1wiGWEmyvDhNLA...VDWud8i6pU8IFyIP6ZJPEcIXKGOdr1.0b974UwC8e974Z2+2ixxxVEmyvDZB6vb7w.hnHArVvcqnq3ZEfaQMpAXxYXqANsr6TW8ow11tSOztsscsEN3nnnFWIofYJIIowZUDvXM9AhyP4AVK3tUzUbsBvsHPM.SNCqqmV1cZJPMc0ZtnBe5zoNuBU466K444y9Wooo28UbbrDFFJ999hqqamCr1irFNms6YXw.F...FFFqvp0tpF0.fl0T8oou0Xl07R0cRRh3337vuOKKKILLz3mdPpyCIIIxqu9ZulZWVVVRZZ5zriA...f4GywrUAVdtAPg5xfBKKqdGLhlxpl0vTow11V788e32WVVl344M86PijkkkXYYItttRXXXQV4366+vflkkkIAAAyyNJlO7l0..PMn6gchURPZ35Ql5S.3qUWfTFRFv7xKuT6e+ZYpzz0U7nrrLw6+q4GrlprrrjSmNULkoZ6yJEW4MnUx.z..LcasGjjtGfIgqGIPM6KasdTf1jkkM55SS4el594RRRVEEUX0zZpKhBiVsYchJSaTArotfx0z0E...6c7fj.XJQfZ1SnGEzflBfRSYGyib73wZ+6WKA0nWAqIJZ0GLCU.apaZesVNmA.LM3sbA.f4GESX.HAAA28P5isXxtlKpvJ0cboNaoBuacel6aAkF.....CCESX.Hhnu5SSYq4kpakiGO1oiCqkhKbWb5zo6Bl1Z5bF....vZGApAXmSm0mlxZZZS466uJpUMh7Vvphii6z2aTTzlo36Vdpe8jrNVwtvmjjjHdddql6yv9gmmmDEEw0l...O.ApAXGJKKSxxxjnnnVyDD02WeGTcTT6EYWOOuhhKroOf89TuZBBBL9OOckZoJOWXo5dMIIIQbbb11OLLkLjUKUPDIPh...sSa0nlrrrUScm.XOJKKSbbbF0fiCCCabJMIhHNNNCJ6Krss6blqrT55mssT8pQMktRRR1Tet1pTAoQjostBQ+8qWp1+WpyeYYYhy+GGIKMSrssabEmC.XqJWX8cAO1nqQMpAw+zSOIGNbPbbbJFTO.LKmOedzuAy2+9223+1XVJmWCCTuqOPwVJ6SJmMQrTca1JGjFeeesGjlnnHwww4l962RYP1VWPPfb3vghuFZP06rFx5IKKKI7G8VaoIIIT+q.vtCAoAc0fxnljjDIHHn0N4ezadG.yqg9f1pfy77yO+v6oCBBjme94dus6ZQ6coU9ggaiJ.GakUJI0TYS8FvMc6sL9HKKSNb3fHh9ynqGUuaT0wo8zw60BUPiaq1Y466KmNcp6aTM8pfKu5x068A..fRdTeckMzwxpFmkHO9ELqFyzoSmFb7Ptd85GkKWt7g7dHNNNWdqq5bQj7vvv7zzz777q4ggg4VVVE+awww8YSC.X7788uoMvl9xxx5qaaDyEee+h9fbcc2EG+SSSysssKttSWelule605VVVk5u+9+s8vw50jpWWXaaWLlr333aFqluu+hrOVd+ao1G.xyyyCCCy888ocrYlpsHWW2kdWAqbk6SqKe8v60ud6+a03eT9qmZ42yX5a6xkKenWApo5NYcAho7f2rssG7NG.fIp5C.01WzF37otyI6g.H355NIOra4sqkkUs82aBOrOtWZZ5M2GT2CAUc7bKw8Iooo2bMzV+dUc35i+VPODFFti5yvrt5gmWD5TXXXtqqatqqatssctsscqAuouiYIMMM222+ga2x86N1.P1q.0TsS8l9.ZBc9CrGXVc4tuT8AgZ6Kd.1oWamO1xY1Y4O2VVVZa6VNHMscLjrpw7TcLXsMPwxC1LLLb91IKYUbMDc1tI0T+FK08B6ApGld08RsnMfasRNd7nLfeL82TMyTUi2Wm8gc4xkOzohIb05xfkkUiymXaa6al2VakhpILM4K8Nvh6IgiBKk9rjcGEEQQ3ch0VAscKWraK2urtpIbUmm2sUXhe4kWJ9yTroWdpU1OkG0NU4wpsTE02SmNUreXrWCQk+bSpoq0ndaMdYYYRTTj344IdddxgCGjmd5Iwyyqy0QDiBsAbqUxwCUcPqo6oGS+M1112L1nvvva5OSDQKOjVmBTimm2M++s0we08onnnM8.kwRY9akvDuNdkzV4ljqqaQm.sQs53goS0WPP0+ssnxq3Rs8xS5irrratl9Qa2pGyYE7YYUsclGE7txm+RRRVr93Juex0PXtTW+FUe3KLLpw8DEEwyAhEQ4q4ZZUacr82TdLX01eqFdHsGFnlpK+lOpQrmjsWznIqEfHRwxZJfRWWspHXMSOWW26NWz0kT80nxuURckMMUWQy561kAiubpl4dCI3cKU1rTtczjjj04abGqNpGtRcsmuuuDGGur6TaT111hqqqDFFxwXLKJGDllhcQRRxn52S8yNkqx0sFnljjj6diwcIc+qNXs09f2HqEf5lw090xPuTKMwcg5MKgowoSmjzzTINNVBCCk777IsyykTVV1MsEoiroo5KkYHOnOsOtLpKPvqoq8srrtYPzjUMXtn52HOOmkHdMx11t33ZdddQ+x08BU.lRpq2Nd7Xs+6Cs+l4Z7NsFnlpc7666242dba++..aE8od0T8ggg9odycaYkq8a5XPuUmxShzsf+T20xb887q5X05ZP1pdt50WeUm6V8R4AQujSCKf1PF12cDPFrjTioQMdvllh7Ccp4UN.OSYPdaLPM08.EMEMpxnyUfQhQBr53551o40d0h8IPeoJRiJ5HnTUulrw4acM6KXYUWA3sqWSXRm+pNHZlpnvDQF1CX9J22V4E8flBnxXxhyoNfjMFnlpucMKKqAuy792+9A8yArKwHAVk5Z8PIKKiUCOLXUGPwXeSNUmFUhz8Gzut91MoG9eOnt1R550DlV1OaJE2X..rdUs9znzzTuy22u282TMiclJ0Fnl553eM9FZdLRcA.nG8od0366alKCsv3UsfwNV08lj5R1yhkW0rqRjtuJmYhiUiUaG..nK0MFolhmQeFS9b1+YsApotBdYWG3Vcyw4me949sWMaH0EPYKbf6HtgqdVVVcZI6Vj2RseS7gkf4p5zbYrOXac0ll9j8r0MvFdX64ScAYaLApYoO2UNE0EY4VEp..v5UyY6xaEM7wtTcOW0mFQD4yp9WTWZPO1AtQAkxbTdMeeJ11mOeVd4kWV7A7MLKbf6HtgaBGOdrSK4epUpk87RUoJ6MqlkHu7xKEqDLkmpXMUzlUsqU8+992+9NsDpWteux+rM0Vl5kYnl5Op82otut55atuxkO0TScCLoOowKOH8xotfrIR2Gz3RV3fahpN0ntN+74ya9BCNlWka6dtZ2F.ymlpOMu4sQ+XaaeWRonlts8o8fYosiKWt7g7Rbccyk2FKWwW9994cU0eVQj7333N+yioSbbbw4jvvPstssssK11VVVaty4kO1kmmmmecY2efYKMMs11Bq6q9z95VguuemN1XYYU7msssua6DFF9vsQSsEU9d5l9pb6jooo01+X4ubccySSSmlCZ42ebarsyV2mgtt+W203VVViZ+AcWc2CU28HMobe1S03BFhx2y2mqGAZSZZZsWyaJW2umTWeG8osKf1Ttuwlzz3+bcc6zuCsM98G7rjWtb4C2L0mpa9NKRcQjpdMkF+qyrqX6o7pnfNiBnmm2MuY0cQwRkreAsnOKY2QQQ6pLSvwwoHS.rssEeeeINNVxyykzzTINNt3e2TlZXIIIxgCGJ5ez00U788uakpIJJRNb3vjseW85jwzNdSY+ZW2liYUR.i2Xm1YlZ1Oy3EgtoxdU007UWkFqNFV.r90V+YiYo5VqiuqCOK4cApoJU5m2EzPm4pb8vv11VqCFpty6lxCXArTTOL+inFD4dfiiyMCVNNNVNc5TQ6Qp9aNc5jjll9vsmZYjtoNc0wOaTTTwxWsJfRgggxoSmj333ZWsubbblj1.0YfZpapuL19ELgGzeOntkjaQF9p8jIg5TCzMUfXrssuo86xljWtH0cPfYWWWMlF5R08rUeZ951OtoF0zzbVtqODQSA5wTUW1CsT5S.w5qpYJUWeS+cUcy0OSdff.yk9VuZz88lljpYNzi9rpxJo15+oZPm6S1rTMqmBBBtKvZu95qRTTTwJ5Uc8mYaaeWP4TOH8TVeMFaeq00+WRRRm6uutedxFh4QSsmLlwpIRGO+UtHGMCd80WoN0fAKHHPRRRtaUYrZ6mCo9T7PUtOoo.rtT39JXTzPeKsWeZtkqqqDDDbW+gQQQcp1FN4w23I4siIkqQMMM+MGyWlZ8WnK01f47qobt8WttJLE0Nlzzz6lW4RKyMv0n6pQM.cTepWMa44Je41g557.NO+S8K0k4vdcsq2m17Z57RW1FUaCrOeF6hpWGMl4zeetlrOes0pMYlptVim5yWlRMhn58v599n77bpwbcx5+fT414p11Tc8UL00Cok94LLkwaPMpASktTeZZ56uq2an9dli3ab4xkOTjQMSUjd6Z8sYto6o+yXMkQlS8lOmpOyp2TwgCGz91FXsqKYFhRPPvflFOqAUqiUSgo33lpVzzke2k+bYxYU3TTeYlxrBE2pKSox9xTN2U8d3I49Hpwbcv5+fjpct5ZCWsh8oLGq9S999FUF0XJ2yCnac8d4iGOVacoooUbvEYbcpLpotnK2mr7ntJn7PxRjvvvbeeedybZR4yqS8wzxYjUeeKXwww4tttF64cxnlYv5+E30ptlwha0UNmpYbRWeaDp1v5RaJ00OzXynltptyu5T0OaiISCp6sH0msWc+7C4sKo5umU1mtqorgZLqVW84muM537Y0qy4MsCk9LDg1xll776aq2Ty9+snscF0rwGHqgaH2O2zp4Yc8i02L1YrtYUepZzkEoeucx5puM8c9OFDDHdddhuu+ME+VLbp2nP0pb+ijjjz6Z3yPiNePPf333TTzN479N0cu.u7kXuXxTWQmsNa0UMspe1888kCGN7v2vnsssjlltH0uGSJylzY6hicE+QGYzgiiSQ+8rBR0cMUK.Gyp0kNxlfCGNb+4yAzDdqYTy1pKAzS8IGeTW2TWl9UW6eO+7yCd+B3SV+Yh1ZUepOMkc73QQj6Oy013RlywFdyTepp97f25XfaU2FlzfjWqTcHotPrKJuxrb974aJ.aso7MF84ljxcZNGoe5V1W7EewRuKLq9c9c9cj+h+h+hkd2nSTSAJ0JHTahhhjWd4kMUpIqJrxkkkkINNNECl9kWd4tAVS6AuotT0enp6AU5Za1MEvn9r5GXZEUy0jwtnMT2w8wVTQyxxp+5hA7LKsFnFdFHzQVVVhuuessqU8AvTq.f.X8p7808YrypxMP09v788uqnB20UTJcp0.0LmCbSj29fqxhiIcIuZmXH0llpqLK84s3V96sO2jT9lfo37dVVlVqeNO8z3FsnkkUmV5gGh+6+6+a4e4e4eYR11ln+t+t+tkdWnWrssEee+GFXa0p.0TccxRnoNCE4SqLcp1rTAq43wiKZvp5yC.u1CnTWON2TFYzGp.xqVkUlx966yJA1TP2s2WW1O20ycMEfLcTKAmxymZe03opbgf.swzz0gUWETEY+r5Gwk4XOXH8UTck6T474yEsiLzL1YrdWa+iiYfaCICaBCCk33XIOOe2zv4TRcdoOOnS0ovVe9YUCfz00sW2nnNumllx4cr40mfOrklFfphNdWm9WpoBISCV8ZrYjQcSI1g7f4ka2epzXldLili8gw7R0ZsHP2woZjJaAmpymSdPP4oW2Mp64U5SFmulwk4XKaLY6xoSmpselxEZ3glwNiUiYTyXG31Pa3aKkp+KM0aNqOy81puss9bcf5ZngDowo77tNdilpongHxn2VS4fN+rO6yju829aOYaeLdpGp4QY4UWqoMiy79N1TAqwyyqyS8EUV9sDYWjIkkLUaGWmO7eWGXScAcXnSaf4nu9oL6E6y9fNU28Mc8XYc0RvVCxVOZZfwtg0fpOuBS2dyvRGPcrtoircotrpQkEpkGiyb2dQiApoOuw25lWWzvm4nOCfp54x9bAe4oZkoYrWOV93hIes8W8Ue0RuKfNPErllVxtiiimo6il+2wlJXMQQQxqu9ZmJZ4poB1RTPg2ZFy.hq6sQa5YAoI2dsNzmOe0UG.Msyei4kFBzl5ddES65e8gI5D1OzQ1tb73wFm9SkChyb2lQwTepZmgcsyw8bZDZxpVfd6hwTPoK+.mLvJfGqo4DaXXnQFrScy00UBCCkzzzhU0o19bWs9Ys2Lksq10.xW2ail5I25Pcqjba2GRE3d087Ja21uHHMlOVF6zswLNoldwEIII2L1y4r9zHRoLpYnp9fFpBFYeM4EKtZ98c97YiIc6z8.dK+4JIIoSO3W0iE84sWqF.eeG32bedGvj455t6d3I08+pO6p25Yc0llWe80cQPrLQ6q2Fs4ZnuTs5xTES7gTIiZvTo5yqniUq19HHHvXdlCQZttbf4BASSWzU1t7xKuTaVdWNYDl6wfVDnlpqFGcotlT2Gl97v8YYYRPPfjjjHYYYhss8LUWFdK3EycizOR0kAr41Pm9aku.tKYSUcm2Oc5DO.F1Up1Fjp8Oy03RkZUM44QYNiplADGGKmOe9liQIIIF4CWNGp12vPGvec8wb6eW8mmqaIssOmKRRRjymOeSP84AEFu9TbtKaLCnsZe3p2D4TLFFt9.5PcOuRcuY7ff.44medRBBso8LGhzumYCvDoyUiIWW2ZCnp5+eI5OpwLpoK6LUSk19TaZx95kLY0f8Tc5633z4UFjwP8PQ0sTWtDd94m05m4xet55agtbgFrqYFURRRuVFvK+lxcccKRoLUwBkAkg8.UacJ111Rbb7BtG0Ei+s+jkk041irrrjiGOdSZmZRuMx4ltZaTEHrlq6V2edNKK6tGxnOCvWc8tZ4oWsTrapY0gIaHYTS0frod4HCQ41tTqviQQQhuuujkkM5G7aOeONlNuM91mD0zMwplU6L00wSUsaJNNVd8e8UiYFuPauXKP2qFSMUVBT+aytKWt7g777bee+b4slOxEQxCCCyaSZZ5Me+111s98WkssctkkUw+e4e+O52Mdr333himkON2Daa6aNeJhjGGG25OSZZZtkkUm+9U+dVim2iiiye5q2OAFipsc1k6O2BF5m2p8M0lxs60m1kptOp9x00sy+rttt28y+XW671OOO+l1aGSaQUauOMMs0u+pmC78867uK006kOVV92+i9ciaU8Z7GcMpNauQsspNduxWWN1ymi4ZM0OuqqatsssQOlhF0ulDPGT8dflttRccbeulCs49Knq67gNFGTbb7M26OE8s727272j633j633j+i9Q+Hsu8++8u+um+m8m8mk633j+EewWj+e7e7en8eG+ve3Or3yvO3G7Cz91OMMs37fuueGNOLtF8TimPmikt5XsFx3Iejtb85kKW9PQfZp14+i5fq7GhgNv6x+NJOH28PijScewUOe1zwzzzzZCRi57ZSWTVc62k.0oNuWdeo7fxL4y6k+7BLTUCtota32jMzOyk6an8GJ85JLPM8S0eG8Yfnk6yo5CC211Q2uTl77ges.dS41Pdz0nU6eeLGu888qc7dk+czkfiz13epdsYe1eq9yZ5iq.yivvv6ttnZadkamifGOslh.0T21z11VqmK+i+i+iu62w2+6+8011+m8y9Y4eiuw23ls+23a7Mx+o+zep19c7W8W8Wc2mg+v+v+Pss8yyuebTS88TSQa80MdNcNlt5ZSptqWuIPM44cuy+wzQZddds2Tx.2zqlZHz00MOLLL222uw.zT2Cq36625OWWNmYYYc248xWyYxCnh.0.cPmOzzZyPeX+tGnF8mQMCc+bpZqnZm6C85mpGmZa6T9Z19NXZU+PkaaubeS6krIS2bccykmd70nc8E1zEpsUcWqny1zp1FYezzXX3Au22p9LK00ti56ouAhF82TDnl5BRqNethjjjIu8k+n+n+nZ29e2u62UKa+rrrF+LnqwhV2Xvlx6qJeduOuXsGotOG5b7JMEHnpuni6BTS4OvMcPs5.E6apkV2.256zzAcSWCDS4i8McwSae0kave67tOjyZj...EjjDQAQ0SMNfcSO.HDnFLV64fzjmOrffTsyxGotAq00iyM8F45p5RUVc+.h8MyWaSWdwLi8ZV04i596z8.q1SpNNr5tNaHY8Zap6Esjmq+9wG5.ia5ADz4Cqg0op2uT8dgxW6PP8ldMcu5XN121ynnC+C+C+CMt8+pu5qzxuieqeqeqZ29eyu42TKa++4+4+4F+L7ke4WpkeGs8LjMd9c.SwjllMH5792pioSW8iT2XMapso6BTS0zxu5NUeqiMMsCV8mauMsmlK0kZUM8kZZN01Tgptu5y.sqdduKAFzTzo.0vbKeia3mfqdO0pr1ILRs0tSchiiuo+n5NlEFFVLGeaqcK0+tqqaQG4p4Qs5m+Q+rpedE0Oq5AXa5yWc+tGi9LsWZyil9S5Hvhwww28ys2uOPWZarZ5NHM444MNG5Kecjtm9B8Y+tsw6X5iu.Sq1ten7+1d6kmLD8YTPp9HK+US8UVWe0pu5xyE111TG861VPN9O+O+OG81OOOO+67c9N0t8+8+8+80x1+m+y+4M9Y3e5e5eRK+NZarTio+d030dz0OkuNZri4RWYvbceVZaeur6BTSd9mlCxU+vNU0Ugp6vDMa8ot5gQWdXoGcQTSCNruVSCXmLpACU0GHt7CWumhsW0iAUaCpbPS55axXHY.npOl1dC7coSzg7ypi9MK+YdrO.Z0qMqKfW111Zq+dc9P86cU6euowpM0u7qxWuL1eWisPB2z3cHPM3Qs0Y5iAcMZH8QNz6eaZpOoq9cyyyy+c+c+cuaa+m9m9mpkscddyACRWYrSddd926688ta6+xKunsse0WvltdNu1N+1kw6MTk+rnSs84o797kKW9vcKO2mNcRd4kWJVBkUKKpJtttid4WrrxKqVpkMTnGVVVRbbrb974ZWpwTKAgUWh9rrrjzzTwyy6ty+p+8vvvQsLnUdocepVJDAVZIII2bumss8MseN9E750m333hkGXUaSYYYRTTzMeep9ChevxVtpOitz2QVV1MeecsOm5VxfGxOqN5e6kWdo3XURRxcel5CUa+QQQ01eeXXnVaat7wBZyebT2an5mttwpc73Qsrbk1lx+de4kWj2Fq4vZYq5mgiGO1qed03Vxxx956KNHIIwrjeC4zoSEswUssNUeRPu5SeyMoq8uod10ff.IKKSrssKNWqq6++pu5qj+x+x+R4G+i+whHh7m7m7mH+0+0+0ZYaKhH+d+d+dxO9G+ikevO3GH+7e9OW9M+M+Mku+2+6Ke6u82Va+NNe9r7a7a7aH+i+i+ihHh7G7G7GH+s+s+sZa6aaaWzuT4ycIIIx6e+6G819QpNdqwNlKWWWIJJR6sOb5zI44meVNe97cWuV0SWtb4Cu6cu6yqaCU8GZJFX0gCGJ9c366eWPCfdnZrJKKSd+6eu7xKuz4K5U2f00eltvyyq3gMVCm2SRRDGGGQDQxyyW38loSRRh344c2eecMdnB5PeaHrt..V21nZaOl90HUU9ZFQ9TGXFug+bVsJJJRrrrtqMjg11zdU0qqzUvTRRRjWe8U44met1ySiUVVlb3vgh++zzTdwLZhp8TUal111yxw1pmSGaeiO8zmZ3Q8BiFC09mN1VXaXNdtl8tIZHD8liiijjjPf3VXAAAhuu+p3Y8VRp9+J2O50qW+3cS8o4zZpXxB8YMNc21KS8o9ldgCIU26y1W80rWzQG4bRp503LMOZxdZxeoO5pN0LmXZOs8Lk0mFcLUTT6eqk6QtGsOBLDkaOAKK0TLjZ.UyTWuVsezKWt7g2oo.AMHUm1SkohDJ1dZa5tUNSav764meVbccK9x11t02DwPNW4662423qZ+nuo.+nMhWGTVV1MY7fHhVmtnaKOIuMVJzGkeqTposjoqbaEkeK1p6WVCeFvsJOFswlYBUGWfNyzg0alaYB4k.v5058d+sCdV9Gqb+e2YIynFog2dh5sfPw8ZapoUqh5V51MEpLpYO9lfeTV1L1njWsviYaauJxxplr2WFtw73QqHVlj1xd15VBuw5ftZmq50G5ZL.qk6O.fdo5WYONlcSRSYJBtk550p88snYTS0B9S42dhpVFvbGc6oZg8p7aFNHHPrrrLx4vnsssjllx7buFsFI3Nnb1lnpiKq02BR0LAj4FMlJkambr2CN0Ju+UMaZTyccrtTMCnFS6bUylFcLF.092RNVRxUPfkgJCN44HWVp1147P6TiA5sBx+sLl.0nnJzWbRcapsy6QQQF8480ZvCFKUCHporTUicpW75quV7mWEEa2FTsHI2zwK.cv008lUTASdpC0T69pU+uYepMhQqsotdeUNPc5ZL.phh+RNlBl3R.yuxqFhl3K9c0XjQZV8hXDo9.Pf2nFGTSKhCKVfZJWiJJOXSGGmU4J7B5l1NuqVxdg4n7CX8xKuz3CTMl2nuJ3Fq4.gEDDbWM3XKcsrZ0ei4ZrYo7CgV2p0lon7fzd94mEQ9z8Lq4LnaOSW0mF0fTEQuYSiZ+if.BruXBAocSXjQZV8bASwpH4VQ4fY030qKYMpw22uXd1q9uq2pyO5p5Nuaaauz6VnFkqOMJUqoLpuFZckQzbcIXtUdEAaqdsrqqKsOanVK0plx6mp+rIu+trL+U6mxs4Ml5SS4qKzQ87JMMsXatV6SA.CC0lFyP4wEScZrYpZZYSWut3q5SmNcRRSSkvvva9yXaq74ZWWWIMMcUOkW1CJ+FuaJpuCIaKL4oqQWnxFLEUM1YKIKKqHagH8UMOoooE2eFDDXr2SoZm222WNc5jjmmya7rQl8jlQW0mFOOuhskZUFbrTaSl1C.6KQQQEYm.OK4xo7JeJk.flEDDT7bSsd85RlQM.vrIMjsK0kUMCISRpKicVKptRkrUeCNkWEqfYhrH.yoxsaOz18BCC0dVHp1lVVV7VbA1YnOPyfp+gsX1kqSpqWaqupKWt7gOS2QHB.aCUqOMkYaaeSMYQjaKfa80ZqFUjkkcWMAYK9FbhhhJh3OY+f4xxxRBCCEOOuh2nHYS.lJis9zTt8SKKKskEhp8EpIB.6OgggrXzX.T0ELFCR6TOyvi5q5oKWt7g28t284yv9D.VQBBBJdnu77aK+6UmxOJttt8JfEO8zao3uZ5PrVrGVFtqdNt7TrAlox2ytEulDymjjjhB8aXXXw89YYYxgCGJ99FR6Bp1OUAog1U...t00qW+3hViZ.f4qtAQWd06pr9rTcap0RiGYOFjllNeCyxoSmJBTiiiyDcO1HWyN2f1ZGQT0X.0J8V4UloxYRnuu+nBRS4..A..faQfZ.PsdzRFWSY.SWWptK+8sVxlFOOuaBRSXX3lKHMQQQ2ksTrD2tdnBViqq6DEnFytP2tD1ZGQpVX3UASob6e111Ctca0hHvVqsS...cho9D.tS4zausLF4vgC09vfcIc3USSCKKKIMMcj6wSunnnadax8cZdYVxkpOdoptQT2p2ES6If8CUF0Td0S574y2TupVus8ArftuqW.rSz2a+2sS8osVZJCnaky1k1dqmiYo59QYriIIII4lfzXaauxePka6pHIIQNb3Psm2bccWwAogV6A5KKKqh66KG.WWWWINNdk21GvBhfz.raMja+2kApg1IA5lG8.5GOdr1umGM8mVS0ml5pWK5ZUJYoEDDHGNbn1BCsR0U7q0EZsGXHNc5jjllV7Udd9lbpdB..XpXpOAf6zmUiIOOu6VptEo8oKSaqnTljpqvIObZZY3o0bVVVQPzTG+ejwd9wvOj...LZa+9519eBALIWud8ie1RuS..yR4rcoKYSwwiGqMPMAAAOLE4M8oTS4o6jZUJoUFvXXTm+xxxjWe80h+bcmidDcLszLfCI...Spseeca+Og.lFxnF.bigjsK8snB2mL1YoTcY3100cxmFPUOV0zTD68u+8288kkk0oZCTerEW5wA..fAgj0A6E83ZcxnF.zn9jsKmNc5lrOQ474y2EHl4s9zLrd+qFjFQdaUeZHYkxZkssMAoA...SKBRy1kgDDNCY2n26D6xhILvbvbq7JsaHqFSMsx.EEEcWfYJWngm9roo+MKGDDn8LSw3zgCKGOdb52O....v1jQDcDiY2n2Lu.0rVe5VfJViMJz25SSY0EXm1lNNlX8oIJJpyEY2UsNzNKYSC..pCCUG.X5YdApYM9zs.aDky1k99f5cco5dHYrybHIIo1ou0dTSYHEvbiGHbdwwazELTc.foG0nF.bmg7P5VVVhss8c0wkjjDIKKSrrrl45SS+75quRVj70XZOASAOP37hi2...lAV0m1.LlBjDV8F6pwTRRh333b2euZ6MjUTJ..XZXjG...SkqWu9QyapOgdaKOTos6ixadexFS8oQw11t1rww22+lsOSqF.f0rs7HO...VdDnFXz1tCEz79jMl5SSYMU6YRRRL15SC..V4Lu2+A..vfQfZVBLXBXvFa1tb5zoZ2FAAAE+4glwN.aIzU.fFYdu+C..fAi.0rDXvDv.oyrcotLxo7Tehh1KPe5JfP5..LqnY2NhCT.SEBTC.zR8oor1V0fn9z.zWDce.fYEM61naCMCGn.lJDnF.ns5SS4sQSAjg5SCLV7hAA..ZEglAXdPfZ.fjjjHhn2rcook2apOMvXwnO+DBZE...vhg.0.rykjjTDnFcV6XbccqMvOTeZ.VAHnU....KFBTCvNVPPf333T7+GEEIAAA2TyZFipSyIpOMsnGYvPRRh333nsyS....l.RnSf27zkKW9v6d2697kdGYuHW3EUpEbfbP777DQd6A8ezC4aYYIVVVxoSmFUVvb3vgheW999MNknP2c3vAQDQRSSW38j8LZDB....520qW+HYTyLig0qIbfr2RRRjnnHIJJpSYhQVVljjjHu95qi52a4f7r0qOMdddSdltnx3owFvqjjD4vgCRTTjd1w1cnQH....LMHiZ.1IxxxJxnlt98aYYIwwwi52aRRh344I111RXX3n1VlLOOuhfdXaaO5iaM4omdRrrrFb1zDEEImOetntDEFFxJwE....fg350qe7yV5cB.LOzQPWFBaa6UvTzYbSikrrraxLkopfIGDDHhz7JpUUYYYx4ymKxNJpoMCGSzI....LWHiZ1T3QI.VJpZwiJyglhBmbeyllrrrh5YihsscQ1zHBYTC....fIgLpYygfz.rTRSSKltXSg9lMMh7ornRsOYYYUava.f9wqNAqKbEK.fIg.0LFzmF.JYpBRSVVl366KVVV8N6WlpogE.ZGCO.qKbEK.fIgU8owf9z.vL374yhHxltXLC.r4juz6...Xsh.0.LWX.aX.JmMMjcL..qH7B8..v.QfZPmQbFFIFv1lzTuZJsHYSC2rqMbnD....8EApAcFwY.3MYYYhmmm7zSOINNNxgCGDGGGsGvlEKaZ3lcsgCk.ae61.xta+fC.L8HPM..8PRRhb3vAIIIQBCCKVUkRRRzdvZn1z..X95e.Y2HQ3fHQupsQtJDOBmnWsXUeB.nGbbbDaaaINNt3uy11VhhhjrrrZWhtSRR58umxYSSW1FT+Z..VKHBGX4wUgZjIuR.ap6W3gHPM..cTPPfXYYcSPZDQtIKZplQMQQQhmm2f+clkkINNNO76KLLr2Kc2..yOS9IZVy33Jvhga8vDf.0..zApLbotogT4rc48u+827u455dWF1zkeWdddhsssb5zoN8yPF0.f0AdhloAGW0Nh8E.VPDnF.fNvyySrrrtKqUplAM0EXk9FDkff.Qj2xRl9FjGfkEOYC.1HnoL.rfHPM..cPSEzWUA+UDQKAUQk4N111DjFrBwS1....LVDnF.fNnKAMQG0HFVom....HGMw9FKO2..iPTTj11Vproo7p8D.lerZlB.r7HHMXe41QePfZ..FH0xwsRWK7uMQkMMGOdbTaG.LN7vA...Xdc6nOXpOgUORKRrTJuZO0TFvnVAm551yxxZPKm2T3gAVNzODFGtBB..2h.0fUOFZCVJkWJtaZkc574y2sxP8H886G.KK5GBiCWAA.fao4.0vaD..6G999E+4lxlkSmN8voDUVVlb3vAw22ezSeJ..fEEON..vno4ZTCsJCfoS2KvmSeo.sZVuLl.rDDDL5swPUNqfv9DEN24AGmwt4p.db..fQihIL.VM59X+l9QIpJ7uhzskt6ljkkIQQQ2jcNyIllUfmoZdvwYvUA..nqnF0..LRtttC9mcpylFGGmh+b0UoJQda4EWUDiUNc5Ti0bG.....LsHPM..CfNx.l4HaZJuxT019gNWlwwLfZ.A...vl0SWtb4Cu6cu6yW5cDsZVF.KiRFXuRU7eUxyGVcGvwwQxxxjzzTcsqA....rcsCdL7qWu9wsYMpYVNwswu5.3F6jBfXGoi5SSVVljjjLpoME..vZCin..ixN4wv2lApA.Z1NoEwZ7nhs6PCzhmmmXYYwzLB..6J62QT.XFHXoqCDnF.fZjjjHGNbPNb3PQA+Uj2BbS4ZJywiG68199rogtLA...vzifktNrMqQM..izSO8otwrssk33XQj2pqLpBzquu+fxHFpMM...ny1A0jC.7Ia2ZTC.5r0XtbL06yQQQ27+qVpp877JBRiss8fBRyVo1zrFutA..XUhfz.r6PF0..TiCGNTTeZBCCkymOWDjFWWWILLbvaWQDxlF.....bGxnF.fFDFFJVVVhkkk344Ih7V.ZRSSGbPZxxxjrrrUe1z.....foCYTC.vLJJJh.0....fulgUDhLrcm8nqWu9QBTC..1XXDF..si1IWS3rEv9BS8I..rAwvYA.ZGsS9XlSYymyV.6ODnF.....faP3Q.vx4qCTi4DwX..f8B58EaabEN..vP70ApgHFuawXnzCNNhE.W1s9QuuXaiqvA..Fh++.vbRmj4GnkVJ.....IUjSD4pPfIH" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-11",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 373.0, 357.0, 395.0, 60.123893805309734 ],
					"pic" : "C:/Users/aleks/Downloads/lagrida_latex_editor.png"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 287.0, 318.0, 354.0, 24.0 ],
					"text" : "offset phasors using the governing kuramoto model equation:"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"patcher" : 						{
							"fileversion" : 1,
							"appversion" : 							{
								"major" : 8,
								"minor" : 5,
								"revision" : 6,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 59.0, 106.0, 257.0, 249.0 ],
							"bglocked" : 0,
							"openinpresentation" : 0,
							"default_fontsize" : 12.0,
							"default_fontface" : 0,
							"default_fontname" : "Arial",
							"gridonopen" : 1,
							"gridsize" : [ 15.0, 15.0 ],
							"gridsnaponopen" : 1,
							"objectsnaponopen" : 1,
							"statusbarvisible" : 2,
							"toolbarvisible" : 1,
							"lefttoolbarpinned" : 0,
							"toptoolbarpinned" : 0,
							"righttoolbarpinned" : 0,
							"bottomtoolbarpinned" : 0,
							"toolbars_unpinned_last_save" : 0,
							"tallnewobj" : 0,
							"boxanimatetime" : 200,
							"enablehscroll" : 1,
							"enablevscroll" : 1,
							"devicewidth" : 0.0,
							"description" : "",
							"digest" : "",
							"tags" : "",
							"style" : "",
							"subpatcher_template" : "",
							"assistshowspatchername" : 0,
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "*",
										"outlettype" : [ "" ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-8",
										"patching_rect" : [ 50.0, 145.0, 117.5, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "!- 1",
										"outlettype" : [ "" ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"id" : "obj-7",
										"patching_rect" : [ 87.0, 68.0, 26.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "phasor",
										"outlettype" : [ "" ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-6",
										"patching_rect" : [ 50.0, 101.0, 56.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "* twopi",
										"outlettype" : [ "" ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"id" : "obj-5",
										"patching_rect" : [ 148.5, 111.0, 50.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1",
										"outlettype" : [ "" ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-1",
										"patching_rect" : [ 50.0, 14.0, 28.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 2",
										"outlettype" : [ "" ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-2",
										"patching_rect" : [ 148.0, 14.0, 28.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"numinlets" : 1,
										"numoutlets" : 0,
										"id" : "obj-4",
										"patching_rect" : [ 50.0, 184.0, 35.0, 22.0 ]
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "obj-1", 0 ],
										"destination" : [ "obj-6", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-2", 0 ],
										"destination" : [ "obj-7", 0 ],
										"order" : 1
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-7", 0 ],
										"destination" : [ "obj-6", 1 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-8", 0 ],
										"destination" : [ "obj-4", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-6", 0 ],
										"destination" : [ "obj-8", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-2", 0 ],
										"destination" : [ "obj-5", 0 ],
										"order" : 0
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-5", 0 ],
										"destination" : [ "obj-8", 1 ]
									}

								}
 ]
						}

					}
,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 91.0, 127.0, 126.0, 22.0 ],
					"text" : "mc.gen~ @chans #1 ",
					"wrapper_uniquekey" : "u188002885"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 18.0, 142.0, 39.0 ],
					"text" : "prmary oscillator (p-osc)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 178.5, 496.0, 193.0, 24.0 ],
					"text" : "Turn phasors into sine waves"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 217.5, 446.0, 261.0, 38.0 ],
					"text" : "convert from p-osc rate into the desired frequencies set by the user"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 91.0, 496.0, 72.0, 22.0 ],
					"text" : "mc.sinx~"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"patcher" : 						{
							"fileversion" : 1,
							"appversion" : 							{
								"major" : 8,
								"minor" : 5,
								"revision" : 6,
								"architecture" : "x64",
								"modernui" : 1
							}
,
							"classnamespace" : "dsp.gen",
							"rect" : [ 59.0, 118.0, 673.0, 300.0 ],
							"bglocked" : 0,
							"openinpresentation" : 0,
							"default_fontsize" : 12.0,
							"default_fontface" : 0,
							"default_fontname" : "Arial",
							"gridonopen" : 1,
							"gridsize" : [ 15.0, 15.0 ],
							"gridsnaponopen" : 1,
							"objectsnaponopen" : 1,
							"statusbarvisible" : 2,
							"toolbarvisible" : 1,
							"lefttoolbarpinned" : 0,
							"toptoolbarpinned" : 0,
							"righttoolbarpinned" : 0,
							"bottomtoolbarpinned" : 0,
							"toolbars_unpinned_last_save" : 0,
							"tallnewobj" : 0,
							"boxanimatetime" : 200,
							"enablehscroll" : 1,
							"enablevscroll" : 1,
							"devicewidth" : 0.0,
							"description" : "",
							"digest" : "",
							"tags" : "",
							"style" : "",
							"subpatcher_template" : "",
							"assistshowspatchername" : 0,
							"boxes" : [ 								{
									"box" : 									{
										"maxclass" : "comment",
										"text" : "Convert twopi wrapped kuramoto offset phasor into other frequencies. First scale back to 0-1, use rate object, then scale back to twopi.",
										"linecount" : 4,
										"numinlets" : 1,
										"numoutlets" : 0,
										"id" : "obj-12",
										"patching_rect" : [ 402.0, 35.0, 240.0, 62.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "* twopi",
										"outlettype" : [ "" ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"id" : "obj-10",
										"patching_rect" : [ 32.0, 223.0, 45.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "/ twopi",
										"outlettype" : [ "" ],
										"numinlets" : 1,
										"numoutlets" : 1,
										"id" : "obj-9",
										"patching_rect" : [ 32.0, 142.0, 43.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 3 @comment all oscillator (desired) frequencies (sigs)",
										"outlettype" : [ "" ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-8",
										"patching_rect" : [ 153.0, 106.0, 307.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "/",
										"outlettype" : [ "" ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-6",
										"patching_rect" : [ 122.5, 142.0, 49.5, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "rate",
										"outlettype" : [ "" ],
										"numinlets" : 2,
										"numoutlets" : 1,
										"id" : "obj-5",
										"patching_rect" : [ 32.0, 186.0, 49.5, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 1 @comment phasor (of hz = in2) * twopi with kuramoto offset",
										"outlettype" : [ "" ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-1",
										"patching_rect" : [ 32.0, 35.0, 360.0, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "in 2 @comment master oscillator frequency (sig)",
										"outlettype" : [ "" ],
										"numinlets" : 0,
										"numoutlets" : 1,
										"id" : "obj-2",
										"patching_rect" : [ 122.5, 70.0, 269.5, 22.0 ]
									}

								}
, 								{
									"box" : 									{
										"maxclass" : "newobj",
										"text" : "out 1",
										"numinlets" : 1,
										"numoutlets" : 0,
										"id" : "obj-4",
										"patching_rect" : [ 32.0, 261.0, 35.0, 22.0 ]
									}

								}
 ],
							"lines" : [ 								{
									"patchline" : 									{
										"source" : [ "obj-8", 0 ],
										"destination" : [ "obj-6", 1 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-1", 0 ],
										"destination" : [ "obj-9", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-5", 0 ],
										"destination" : [ "obj-10", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-10", 0 ],
										"destination" : [ "obj-4", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-9", 0 ],
										"destination" : [ "obj-5", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-2", 0 ],
										"destination" : [ "obj-6", 0 ]
									}

								}
, 								{
									"patchline" : 									{
										"source" : [ "obj-6", 0 ],
										"destination" : [ "obj-5", 1 ]
									}

								}
 ]
						}

					}
,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 91.0, 454.0, 126.0, 22.0 ],
					"text" : "mc.gen~ @chans #1",
					"wrapper_uniquekey" : "u315002874"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-5",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.5, 112.0, 296.0, 52.0 ],
					"text" : "generate p-osc phasors with offsets that match user toggles. Also scale from 0-twopi for better performance."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 57.0, 62.0, 70.0, 22.0 ],
					"text" : "mc.sig~ 0.1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 379.5, 188.5, 143.0, 24.0 ],
					"text" : "oscillator frequencies"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.0, 18.0, 139.0, 39.0 ],
					"text" : "oscillator states (0/1)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.015088665371046,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 586.0, 18.0, 170.0, 41.0 ],
					"text" : "Args:\n#1 Number of oscillators"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 125.0, 262.0, 31.0, 22.0 ],
					"text" : "k $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 91.0, 543.0, 72.0, 22.0 ],
					"text" : "mc.*~"
				}

			}
, 			{
				"box" : 				{
					"comment" : "(mc.signal) Oscillator frequencies",
					"id" : "obj-50",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.5, 185.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(mc.signal) Oscillator states (0/1) Expects as many channels as the number of oscillators",
					"id" : "obj-42",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 226.5, 62.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 125.0, 357.0, 223.0, 22.0 ],
					"text" : "buffer~  #0_current_phases @samps #1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 91.0, 318.0, 193.0, 22.0 ],
					"text" : "mc.gen~ ksync_node @chans #1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 185.5, 134.0, 38.0 ],
					"text" : "K value, or coupling strength"
				}

			}
, 			{
				"box" : 				{
					"comment" : "(mc.signal) Synchronized sine oscillators",
					"id" : "obj-25",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 579.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "(float) K value, or coupling strength",
					"id" : "obj-19",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 125.0, 188.5, 30.0, 30.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"order" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 1 ],
					"midpoints" : [ 236.0, 470.5, 153.5, 470.5 ],
					"order" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"order" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"midpoints" : [ 351.0, 364.75, 207.5, 364.75 ],
					"order" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"midpoints" : [ 66.5, 368.0, 154.0, 368.0 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "ksync_node.gendsp",
				"bootpath" : "~/Documents/GitHub/aleks.max/src/aleks.ksync",
				"patcherrelativepath" : ".",
				"type" : "gDSP",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
