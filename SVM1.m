clc
clear all
close all


X = [0.214398801	0.472764843	0.472423378	2.459240696	24.66666667	0.41238376	0.460746726	0.725396836	7.838639083	0.093789607	3	5	7.838639083	0.4478];

feature = [0.2179	0.4491	0.47	2.4157	25.4394	0.4019	0.4682	0.7242	7.5061	0.0967	3	5	5.6148	0.4574
0.1108	0.4769	0.477	2.3813	25.6439	0.4027	0.4718	0.7281	7.6658	0.0975	3	4	5.7456	0.4599
0.1486	0.4756	0.4738	2.4332	24.4167	0.4104	0.4631	0.726	8.083	0.0928	3	5	6.4314	0.4447
0.2057	0.4727	0.4792	2.4592	25.0909	0.4125	0.462	0.7299	9.0062	0.0954	3	5	6.8794	0.4531
0.2132	0.4679	0.4702	2.4728	23.8333	0.4011	0.4578	0.7229	7.2278	0.0906	3	5	5.5089	0.4374
0.1254	0.4615	0.4666	2.3694	24.3712	0.3874	0.4719	0.7197	6.5093	0.0927	3	5	5.0471	0.4442
0.1848	0.4639	0.4501	2.4163	23.6212	0.3767	0.4648	0.7109	7.204	0.0898	3	5	5.4	0.4347
0.1669	0.4761	0.478	2.4578	24.8409	0.4188	0.4619	0.729	8.6287	0.0945	3	5	5.683	0.45
0.2587	0.4663	0.4646	2.5173	22.6515	0.405	0.4501	0.7177	6.8524	0.0861	3	5	5.683	0.4223
0.1787	0.4681	0.4681	2.4099	24.8561	0.3998	0.4678	0.7227	8.4721	0.0945	3	5	6.5108	0.4223
0.1708	0.4703	0.4774	2.454	23.697	0.3993	0.4597	0.7263	7.062	0.0901	3	5	5.3145	0.4357
0.151124238	0.469707993	0.465161283	2.45558244	23.52272727	0.387635845	0.458936321	0.720964404	6.920757859	0.089440028	3	5	5.208379543	0.4335
0.189668347	0.454588251	0.466681623	2.474104159	22.57575758	0.387706856	0.455178208	0.719550375	7.501023186	0.085839382	3	5	5.861098493	0.4213
0.268751477	0.424251622	0.456750894	2.470244268	23.31818182	0.386352496	0.457539271	0.715355113	7.684303528	0.088662288	3	5	5.388886526	0.4309
0.155111492	0.454936493	0.46242532	2.421361908	24.46212121	0.397850183	0.465479894	0.719445364	7.370105787	0.093011868	3	5	5.811255492	0.4453
0.201261773	0.471080682	0.457305111	2.534450974	22.21212121	0.389343223	0.447438741	0.714082894	6.497584901	0.084456735	3	5	5.026046492	0.4166
0.223214241	0.45864596	0.473516927	2.523476207	23.83333333	0.406169362	0.452708645	0.724514035	6.930080317	0.090621039	3	5	5.464457147	0.4374
0.132265683	0.47390712	0.474505098	2.485971886	23.76515152	0.40892822	0.456370742	0.726324305	7.231350753	0.090361793	3	5	5.707526444	0.4365
0.198817018	0.461804792	0.45949125	2.450282291	25.27272727	0.401492944	0.464203825	0.717639423	7.420867881	0.09609402	3	5	5.870644482	0.4553
0.171438205	0.433073891	0.457107858	2.366776126	25.62878788	0.388932314	0.475051849	0.71661913	7.318534897	0.097447863	3	5	5.661441325	0.4597
0.180611703	0.455678678	0.472019432	2.484848485	23.37878788	0.394356601	0.4556943	0.725972697	7.517885018	0.08889273	3	5	5.564033139	0.4316
0.157134519	0.496576158	0.47668982	2.523015324	22.58333333	0.402756229	0.449177613	0.726872704	7.582022326	0.085868188	3	5	5.845546722	0.4214
0.247380091	0.49026804	0.45958952	2.510197027	23.46969697	0.407163629	0.453286669	0.716045958	6.623786851	0.089238392	3	5	5.328993139	0.4328
0.214103013	0.503843756	0.480926388	2.579415831	21.58333333	0.420660566	0.440263855	0.725972461	7.391458009	0.082065906	3	5	5.871716273	0.4083
0.226065563	0.462542003	0.459440083	2.457397166	23.87121212	0.394647466	0.460138937	0.71746896	7.322392049	0.090765065	3	5	5.693464463	0.4379
0.187339531	0.455713181	0.469111717	2.456763452	23.28030303	0.385496947	0.458968007	0.720782178	7.185510318	0.088518262	3	5	5.286568071	0.4304
0.16287835	0.445479514	0.4746	2.423983178	24.34848485	0.395799677	0.464686312	0.7173	7.353799489	0.09257979	3	5	5.517297828	0.4439
0.205927522	0.468646518	0.481058175	2.46534739	24.89393939	0.417188713	0.460427469	0.730206672	8.227018794	0.094653762	3	5	6.117436403	0.450646501
0.279731365	0.41163891	0.466196451	2.34162922	28.38636364	0.394261894	0.483114414	0.724146397	7.800889395	0.107932942	3	5	5.287296509	0.492402443
0.188288338	0.479879503	0.473259442	2.504752852	22.58333333	0.403388594	0.45095105	0.723418226	7.148295736	0.085868188	3	5	5.519189814	0.421415058
0.241544932	0.478388716	0.481085159	2.549372047	23.07575758	0.417537972	0.446530898	0.729488318	8.620582795	0.087740523	3	5	6.618662473	0.42775895
0.161250455	0.466538201	0.45934436	2.41021431	25.31060606	0.391638093	0.468853459	0.719361045	6.001172081	0.096238046	3	5	4.826122484	0.45577674
0.255335788	0.474236804	0.467431225	2.504061528	23.90151515	0.405119989	0.453887257	0.72161608	7.814414876	0.090880286	3	5	6.125199187	0.43825653
0.170880407	0.48018539	0.473670533	2.497119484	23.64393939	0.412925906	0.454021201	0.724718296	7.152783945	0.08990091	3	5	5.696044126	0.435000706
0.270525633	0.449452823	0.473670533	2.497119484	25.21969697	0.396314935	0.466887986	0.726137001	7.15031945	0.095892384	3	5	5.145880429	0.454660972
0.173124407	0.451703181	0.46798144	2.443167416	24.65909091	0.397204213	0.463465453	0.724810563	8.421580255	0.093760802	3	5	6.178180618	0.447736408
0.232547178	0.444008297	0.470463924	2.448698007	24.85606061	0.402153228	0.463268138	0.724415321	7.180680093	0.094509736	3	5	5.367384369	0.450178038
0.157180732	0.46431768	0.470463924	2.448698007	23.57575758	0.40257254	0.457227695	0.72232349	7.072701695	0.089641664	3	5	5.682805325	0.434136058
0.14371673	0.469193471	0.468378954	2.43057956	24.29545455	0.399398422	0.463915294	0.721807369	7.737670024	0.092378154	3	5	5.937662487	0.443203818
0.075513441	0.47223745	0.474102988	2.401803203	25.53030303	0.401203865	0.469942774	0.727636731	7.066666235	0.097073396	3	5	5.585428615	0.458465043
0.195005633	0.462841958	0.4750709	2.47237585	24.37878788	0.411206152	0.459029938	0.727001813	8.575890044	0.092695011	3	5	6.786468352	0.444245414
0.214232786	0.457352219	0.463725927	2.458376541	23.96969697	0.404193367	0.459672773	0.719982519	7.876485118	0.091139532	3	5	6.324693453	0.439115567
0.214232786	0.457352219	0.463725927	2.458376541	23.96969697	0.404193367	0.459672773	0.719982519	7.876485118	0.091139532	3	5	6.324693453	0.439115567
0.18272243	0.412712344	0.457383536	2.382129278	25.12121212	0.377855161	0.472125245	0.718630372	7.468575018	0.095517917	3	5	5.22732796	0.453449989
0.107192074	0.474535113	0.4731	2.4629	23.51515152	0.404077828	0.4583	0.7254	7.1383	0.089411222	3	5	5.605012663	0.4334
0.2122	0.4493	0.4734	2.4042	25.4773	0.4096	0.469	0.7267	7.3716	0.0969	3	5	5.8249	0.4578
0.2189	0.4869	0.4622	2.4645	22.4773	0.3939	0.4558	0.7166	7.6088	0.0855	3	5	5.6946	0.42
0.2346	0.4456	0.4775	2.3937	25.6439	0.4057	0.4708	0.727	6.9386	0.0975	3	5	5.1589	0.4599
0.1739	0.4489	0.4618	2.3782	26.9924	0.401	0.4759	0.7226	6.9851	0.1026	3	5	5.5619	0.4761
0.1961	0.51859251	0.4847	2.5791	21.8939	0.4217	0.4409	0.7291	7.2732	.0832	3	5	5.8652	0.4124
0.187781576	0.435028694	0.4683	2.4167	24.6894	0.395723852	0.4669	0.7241	7.4281	0.093876023	3	5	5.688733302	0.4481
0.20543778	0.482767274	0.4666	2.5006	22.57575758	0.405198698	0.4515	0.7187	6.7436	0.085839382	3	5	5.180098281	0.4213
0.218815987	0.465528139	0.4666	2.5006	22.45454545	0.390127866	0.4515	0.7187	7.0965	0.0853785	3	5	5.366158879	0.4197
0.162756273	0.460314044	0.477	2.4086	25.59848485	0.410460188	0.4689	0.7278	7.239190453	0.097332642	3	5	5.524454069	0.4593
0.178051816	0.451750235	0.4677	2.4768	23.01515152	0.393900167	0.4558	0.7216	7.065246769	0.087510082	3	5	5.322440938	0.427
0.178051816	0.451750235	0.4619	2.3807	23.01515152	0.393900167	0.4725	0.7209	7.073380269	0.097534278	3	5	5.464758479	0.4599
0.227335868	0.227335868	0.4631	2.441	24.37878788	0.402509114	0.4628	0.7176	6.467812599	0.092695011	3	5	4.870939356	0.4442
0.159533569	0.489695144	0.4675	2.5322	22.79545455	0.404941914	0.4481	0.7218	6.990629871	0.086674732	3	5	5.543615288	0.4242
0.166857271	0.47711317	0.4687	2.4703	23.91666667	0.400260756	0.4582	0.7232	6.845015807	0.090937896	3	5	5.224548568	0.4384
0.164705916	0.445178535	0.4633	2.4215	24.37878788	0.389560608	0.4655	0.7207	7.04204821	0.092695011	3	5	5.278456068	0.4442
0.258378816	0.452281784	0.456	2.4649	24.06060606	0.397349639	0.459	0.7151	6.759369072	0.091485194	3	5	5.328468158	0.4403
0.185035705	0.457538665	0.4674	2.4549	23.88636364	0.40487484	0.4596	0.7215	7.827115053	0.090822675	3	5	6.186804332	0.4381
0.139558033	0.48849551	0.4733	2.456	24.09090909	0.415504469	0.4594	0.7249	7.878855917	0.091600415	3	5	6.526219253	0.4406
0.161485962	0.461165659	0.4937	2.464	23.89393939	0.416496311	0.4587	0.7368	8.090859655	0.090851481	3	5	5.917342985	0.4382
0.161484752	0.464369269	0.4512	2.4223	24.70454545	0.395873673	0.4653	0.7128	6.027471068	0.093933633	3	5	6.027471068	0.4483
0.207331936	0.455034218	0.4481	2.4663	23.25757576	0.381661998	0.4578	0.7098	6.711713798	0.088431847	3	5	5.342169714	0.4301
0.136539243	0.462268005	0.465	2.3888	25.56818182	0.394270109	0.4715	0.7227	6.953018578	0.097217421	3	5	5.33092167	0.4589
0.237551617	0.457219622	0.4685	2.4824	23.34848485	0.418339863	0.4552	0.721	7.327041708	0.088777509	3	5	6.228471871	0.4312
0.203900065	0.459466305	0.4718	2.4701	23.62121212	0.403359568	0.4577	0.724	6.890344598	0.089814495	3	5	5.426968748	0.4347
0.148079242	0.451096263	0.4597	2.4453	24.56818182	0.396096251	0.4629	0.7187	7.383594919	0.09341514	3	5	5.654379367	0.4466
0.165523283	0.480594841	0.4644	2.4566	23.4469697	0.389221844	0.4591	0.7221	7.663611336	0.089151976	3	5	5.855607367	0.4325
0.199520885	0.482433287	0.4763	2.4869	24.35606061	0.413775867	0.4586	0.7255	7.72694069	0.092608595	3	5	6.159638661	0.444
0.214542813	0.465984173	0.4704	2.4422	24.5530303	0.405779928	0.4629	0.7234	7.485073582	0.09335753	3	5	5.86112431	0.4464
0.162187453	0.478614617	0.4728	2.4731	23.16666667	0.402899894	0.456	0.7234	9.183697945	0.088086185	3	5	7.204220176	0.4289
0.216125374	0.43444758	0.4569	2.4063	24.12878788	0.377139146	0.4669	0.7159	6.937588289	0.091744441	3	5	5.122424116	0.4411
0.214983934	0.456870001	0.436	2.4399	23.77272727	0.378721019	0.4616	0.7042	5.808896436	0.090390598	3	5	4.52704713	0.4366];

y_cop=[1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0];

svmStruct = svmtrain(feature,y_cop);
%disp('Predicted Class Labels')
Group = svmclassify(svmStruct,X)