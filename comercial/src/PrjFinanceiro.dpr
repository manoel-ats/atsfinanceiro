program PrjFinanceiro;



uses
  Forms,
  uFinanceiro in 'uFinanceiro.pas' {fFinanceiro},
  UDm in 'UDm.pas' {DM: TDataModule},
  ufcr in 'ufcr.pas' {fcrproc},
  uPai in 'uPai.pas' {fPai},
  uProcurar in 'uprocurar.pas' {fProcurar},
  ufprocura_prod in 'ufprocura_prod.pas' {fProcura_prod},
  uListaClientes in 'uListaClientes.pas' {fListaClientes},
  ucrTitulo in 'ucrTitulo.pas' {fcrTitulo},
  uFornecedorRepresentante in 'uFornecedorRepresentante.pas' {fFornecedorRepresentante},
  uClienteCadastro in 'uClienteCadastro.pas' {fClienteCadastro},
  uclienteendereco in 'uclienteendereco.pas' {fclienteendereco},
  uClienteRepresentante in 'uClienteRepresentante.pas' {fClienteRepresentante},
  uClienteVeiculo in 'uClienteVeiculo.pas' {fClienteVeiculo},
  uFornecedorCadastro in 'uFornecedorCadastro.pas' {fFornecedorCadastro},
  uFornecedorEndereco in 'uFornecedorEndereco.pas' {fFornecedorEndereco},
  uDuplicata in 'uDuplicata.pas' {fDuplicata},
  uRemessaTitulo in 'uRemessaTitulo.pas' {fRemessaTitulo},
  ubanco in 'ubanco.pas' {fbanco},
  uCheques_bol in 'uCheques_bol.pas' {fCheques_bol},
  ufcpproc in 'ufcpproc.pas' {fCpProc},
  ufcrtitulo in 'ufcrtitulo.pas' {fcpTitulo},
  uCrTituloPagto in 'uCrTituloPagto.pas' {fcrTituloPagto},
  uCrTituloInclui in 'uCrTituloInclui.pas' {fcrTituloInclui},
  uFiltro_forn_plano in 'uFiltro_forn_plano.pas' {fFiltro_forn_plano},
  ufplanocontas in 'ufplanocontas.pas' {fPlanoContas},
  ufContasAssistente in 'ufContasAssistente.pas' {fContasAssistente},
  uftransp in 'uftransp.pas' {ftransp},
  ufContabilLanc in 'ufContabilLanc.pas' {fContabilLanc},
  ufProcContabil in 'ufProcContabil.pas' {fProcContabil},
  ufMovimentoCont in 'ufMovimentoCont.pas' {fMovimentoCont},
  uFamilia in 'uFamilia.pas' {fFamilia},
  uCategoria in 'uCategoria.pas' {fCategoria},
  ufNotafiscalProc in 'ufNotafiscalProc.pas' {fNotaFiscalProc},
  uNotafiscal in 'uNotafiscal.pas' {fnotafiscal},
  uAssociacao in 'uAssociacao.pas' {fAssociacao},
  uSobre in 'uSobre.pas' {fSobre},
  uRelatorio in 'uRelatorio.pas' {fRelatorio},
  ufDlgLogin in 'ufdlglogin.pas' {fDlgLogin},
  uDmApp in 'udmapp.pas' {dmApp: TDataModule},
  uSplash_Fin in 'uSplash_Fin.pas' {fSplash_Fin},
  uRelatorioReceber in 'uRelatorioReceber.pas' {fRelatorioReceber},
  uRateioPag in 'uRateioPag.pas' {fRateioPag},
  uMostraDetalhe in 'uMostraDetalhe.pas' {fMostraDetalhe},
  ufCrAltera in 'ufCrAltera.pas' {fCrAltera},
  gbCobranca in 'gbCobranca.pas',
  uAgendamento in 'uAgendamento.pas' {fAgendamento},
  uVisitas in 'uVisitas.pas' {fVisitas},
  ucrEscolas in 'ucrEscolas.pas' {fcrEscolas},
  uListaCliEscola in 'uListaCliEscola.pas' {fListaCliEscola},
  uRel_CR in 'uRel_CR.pas' {fRel_CR},
  uRel_CR1 in 'uRel_CR1.pas' {fRel_CR1},
  uEmpresa in 'uEmpresa.pas' {fEmpresa},
  Utils in 'Utils.pas',
  uResolucaoTela in 'uResolucaoTela.pas' {fResolucaoTela},
  uGeraCob in 'uGeraCob.pas' {fGeraCob},
  uPlanos in 'uPlanos.pas' {fPlanos},
  uProcuraCBR in 'uProcuraCBR.pas' {fProcuraCBR},
  uArquivoRetorno in 'uArquivoRetorno.pas' {fArquivoRetorno},
  uBaixaretorno in 'uBaixaretorno.pas' {fBaixaretorno},
  ufuncionario in 'ufuncionario.pas' {fFuncionario},
  Encrypt_decrypt in 'Encrypt_decrypt.pas',
  uFrConfigDbx in 'uFrConfigDbx.pas' {FrConfigDbx},
  uRelatorioFin in 'uRelatorioFin.pas' {fRelatorioFin},
  uGeraCobCliente in 'uGeraCobCliente.pas' {fGeraCobCliente},
  ufcrSaude in 'ufcrSaude.pas' {fcrProcSaude},
  uRelCr2 in 'uRelCr2.pas' {fRel_CR2},
  uListaClientesSaude in 'uListaClientesSaude.pas' {fListaClienteSaude},
  uEntrada in 'uEntrada.pas' {fEntrada},
  uProcedimentos in 'uProcedimentos.pas' {fProcedimentos},
  uFiltroMovLancamento in 'uFiltroMovLancamento.pas' {fFiltroMovLancamento},
  uLancaProcSaude in 'uLancaProcSaude.pas' {fLancaProcSaude},
  uLancaProcSaudeProc in 'uLancaProcSaudeProc.pas' {fLancaProcSaudeProc},
  UDmSaude in 'UDmSaude.pas' {DMSaude: TDataModule},
  uCorrigirDesconto in 'uCorrigirDesconto.pas' {fCorrigeDesconto},
  uImpr_Boleto in 'uImpr_Boleto.pas' {fImpr_Boleto},
  uRelatorioCaixa in 'uRelatorioCaixa.pas' {fRelatorioCaixa},
  uRelatorioAsh in 'uRelatorioAsh.pas' {fRelatorioAsh},
  uCheq_bolBaixa in 'uCheq_bolBaixa.pas' {fCheq_bolBaixa},
  uLancaProcPcmso in 'uLancaProcPcmso.pas' {fLancaProcPcmso},
  uFornecedorCadastroSaude in 'uFornecedorCadastroSaude.pas' {fFornecedorCadastroSaude},
  uLancaProcPart in 'uLancaProcPart.pas' {fLancaProcPart},
  uProdFornecedor in 'uProdFornecedor.pas' {fProdFornecedor},
  uEnvelope in 'uEnvelope.pas' {fEnvelope},
  uFluxoCaixa in 'uFluxoCaixa.pas' {fFluxoCaixa},
  uNotaFiscalEscola in 'uNotaFiscalEscola.pas' {fNotaFiscalEscola},
  uProcuraCheque in 'uProcuraCheque.pas' {fProcuraCheque},
  //fClassCitrus in '..\..\citrus\fClassCitrus.pas',
  //uDmCitrus in '..\..\citrus\uDmCitrus.pas' {DmCitrus: TDataModule},
  sCtrlResize in 'sCtrlResize.pas',
  uCh in 'uCh.pas' {fCh},
  ufCpAltera in 'ufCpAltera.pas' {fCpAltera},
  uGerar_Dados in 'uGerar_Dados.pas' {fGerar_Dados},
  uCorrige in 'uCorrige.pas' {fCorrige},
  ufLancaProcSaude1 in 'ufLancaProcSaude1.pas' {fLancaProcSaude1},
  uConfM in 'uConfM.pas' {fConfM},
  uGerar_DadosS in 'uGerar_DadosS.pas' {fGerar_DadosS},
  uCorrigeS in 'uCorrigeS.pas' {fCorrigeS},
  UProcuraGrupo in 'UProcuraGrupo.pas' {fProcuraGrupo},
  uConf in 'uConf.pas' {fConf},
  uConf2 in 'uConf2.pas' {fConf2},
  ufcpprocS in 'ufcpprocS.pas' {fCpProcS},
  UProcuraGrupoT in 'UProcuraGrupoT.pas' {fProcuraGrupoT},
  uCobranca in 'uCobranca.pas' {fCobranca},
  uFiltroCobranca in 'uFiltroCobranca.pas' {fFiltroCobranca},
  uMov in 'uMov.pas' {fMov},
  uAud in 'uAud.pas' {fAud},
  uAudReceber in 'uAudReceber.pas' {fAudReceber},
  uCompra in 'uCompra.pas' {fCompra},
  uCompraFinalizar in 'uCompraFinalizar.pas' {fCompraFinalizar},
  uFiltroMov_compra in 'uFiltroMov_compra.pas' {fFiltroMov_compra},
  uPdm in 'uPdm.pas' {fPdm},
  uFiltroMovimento in 'uFiltroMovimento.pas' {fFiltroMovimento},
  uRelDMED in 'uRelDMED.pas' {fRelDMED},
  ufechamento_caixa in 'ufechamento_caixa.pas' {fFechamento_caixa},
  uConMens in 'uConMens.pas' {fConMens},
  uDetalhe in 'uDetalhe.pas' {fDetalhe},
  ufCpAltera2 in 'ufCpAltera2.pas' {fCpAltera2},
  uFiltro_forn_planoP in 'uFiltro_forn_planoP.pas' {fFiltro_forn_planoP},
  uUtils in 'uUtils.pas',
  uLancaProcSaudeExames in 'uLancaProcSaudeExames.pas' {fLancaProcSaudeExames},
  uCombo in 'uCombo.pas' {fCombo},
  uFamiliaP in 'uFamiliaP.pas' {fFamiliaP};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ATS - Financeiro';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMSaude, DMSaude);
  Application.CreateForm(TfFinanceiro, fFinanceiro);
  Application.CreateForm(TfCpAltera, fCpAltera);
  Application.CreateForm(TfGerar_Dados, fGerar_Dados);
  Application.CreateForm(TfCorrige, fCorrige);
  Application.CreateForm(TfLancaProcSaude1, fLancaProcSaude1);
  Application.CreateForm(TfcrProcSaude, fcrProcSaude);
  Application.CreateForm(TfConfM, fConfM);
  Application.CreateForm(TfGerar_DadosS, fGerar_DadosS);
  Application.CreateForm(TfCorrigeS, fCorrigeS);
  Application.CreateForm(TfProcuraGrupo, fProcuraGrupo);
  Application.CreateForm(TfConf, fConf);
  Application.CreateForm(TfConf2, fConf2);
  Application.CreateForm(TfCpProcS, fCpProcS);
  Application.CreateForm(TfProcuraGrupoT, fProcuraGrupoT);
  Application.CreateForm(TfCobranca, fCobranca);
  Application.CreateForm(TfFiltroCobranca, fFiltroCobranca);
  Application.CreateForm(TfAud, fAud);
  Application.CreateForm(TfAudReceber, fAudReceber);
  Application.CreateForm(TfCompraFinalizar, fCompraFinalizar);
  Application.CreateForm(TfFiltroMov_compra, fFiltroMov_compra);
  Application.CreateForm(TfFiltroMovimento, fFiltroMovimento);
  Application.CreateForm(TfPdm, fPdm);
  Application.CreateForm(TfRelDMED, fRelDMED);
  Application.CreateForm(TfFechamento_caixa, fFechamento_caixa);
  Application.CreateForm(TfDetalhe, fDetalhe);
  Application.CreateForm(TfCpAltera2, fCpAltera2);
  Application.CreateForm(TfFiltro_forn_planoP, fFiltro_forn_planoP);
  Application.CreateForm(TfCombo, fCombo);
  Application.CreateForm(TfFamiliaP, fFamiliaP);
  DM.formusercontrol := 'formdespesas';
  Application.CreateForm(TfcrTituloPagto, fcrTituloPagto);
  DM.formusercontrol := 'formreceber';
  Application.CreateForm(TfcrTitulo, fcrTitulo);
  DM.formusercontrol := 'formreceitas';
  Application.CreateForm(TfCompra, fCompra);
  Application.CreateForm(TfcrTituloInclui, fcrTituloInclui);
  Application.CreateForm(TfcpTitulo, fcpTitulo);
  Application.CreateForm(TfFiltro_forn_plano, fFiltro_forn_plano);
  Application.CreateForm(TfCheques_bol, fCheques_bol);
  Application.CreateForm(TfRateioPag, fRateioPag);  
  Application.Run
end.
