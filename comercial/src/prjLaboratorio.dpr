program prjLaboratorio;

uses
  Forms,
  uLaboratorio in 'uLaboratorio.pas' {fLaboratorio},
  UDm in 'UDm.pas' {DM: TDataModule},
  UDmSaude in 'UDmSaude.pas' {DMSaude: TDataModule},
  uPai_new in 'uPai_new.pas' {fPai_new},
  uLabSolicitaExame in 'uLabSolicitaExame.pas' {fLabSolicitaExame},
  uPai in 'uPai.pas' {fPai},
  uLabColetaMateriais in 'uLabColetaMateriais.pas' {fLabColetaMateriais},
  uLabEntregaResultado in 'uLabEntregaResultado.pas' {fLabEntregaResultado},
  uLabLaudo in 'uLabLaudo.pas' {fLabLaudo},
  uClientePlano in 'uClientePlano.pas' {fClientePlano},
  uLabExameLocaliza in 'uLabExameLocaliza.pas' {fLabExameLocaliza},
  uCombo in 'uCombo.pas' {fCombo},
  ucadastro in 'ucadastro.pas' {fcadastro},
  uComboLab in 'uComboLab.pas' {fComboLab},
  uFornecedorCadastroSaude in 'uFornecedorCadastroSaude.pas' {fFornecedorCadastroSaude},
  uFornecedorRepresentanteSaude in 'uFornecedorRepresentanteSaude.pas' {fFornecedorRepresentanteSaude},
  uFornecedorEnderecoSaude in 'uFornecedorEnderecoSaude.pas' {fFornecedorEnderecoSaude};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMSaude, DMSaude);
  Application.CreateForm(TfLaboratorio, fLaboratorio);
  Application.CreateForm(TfPai_new, fPai_new);
  Application.CreateForm(TfPai, fPai);
  Application.CreateForm(TfLabColetaMateriais, fLabColetaMateriais);
  Application.CreateForm(TfLabEntregaResultado, fLabEntregaResultado);
  Application.CreateForm(TfCombo, fCombo);
  Application.CreateForm(Tfcadastro, fcadastro);
  Application.CreateForm(TfComboLab, fComboLab);
  Application.CreateForm(TfFornecedorCadastroSaude, fFornecedorCadastroSaude);
  Application.CreateForm(TfFornecedorRepresentanteSaude, fFornecedorRepresentanteSaude);
  Application.CreateForm(TfFornecedorEnderecoSaude, fFornecedorEnderecoSaude);
  Application.Run;
end.
