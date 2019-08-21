unit Form_Index;

interface

uses
System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  System.Actions, FMX.ActnList, FMX.MultiView, FMX.ListBox,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.ScrollBox,
  FMX.Memo, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, DB, MultiDetailAppearanceU,
  System.ImageList, FMX.ImgList, System.DateUtils, FGX.ActionSheet,
  FMX.MediaLibrary.Actions, FMX.StdActns, FMX.DateTimeCtrls, FMX.Ani, FireDAC.Stan.Param,FireDAC.Comp.Client;

type
  Tfrm_index = class(TForm)
    tb_control: TTabControl;
    tab_login: TTabItem;
    tab_main: TTabItem;
    Rectangle1: TRectangle;
    Image1: TImage;
    Layout1: TLayout;
    Email: TLabel;
    edt_email: TEdit;
    Senha: TLabel;
    edt_senha: TEdit;
    bt_acessar: TButton;
    StyleBook1: TStyleBook;
    ActionList1: TActionList;
    act_main: TChangeTabAction;
    ToolBar1: TToolBar;
    Rectangle2: TRectangle;
    lbl_saldo_main: TLabel;
    lbl_main_saldoGeral: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    lbl_total_rec_main: TLabel;
    lbl_main_receita: TLabel;
    Layout4: TLayout;
    lbl_main_despesas: TLabel;
    lbl_total_desp_main: TLabel;
    Layout5: TLayout;
    Layout6: TLayout;
    img_receita: TImage;
    Layout7: TLayout;
    Image2: TImage;
    MultiView1: TMultiView;
    Rectangle3: TRectangle;
    Image3: TImage;
    ListBox1: TListBox;
    item_menu_PainelGerencial: TListBoxItem;
    item_menu_Lancamentos: TListBoxItem;
    item_menu_Categoria: TListBoxItem;
    item_menu_Perfil: TListBoxItem;
    btn_menu: TSpeedButton;
    tbl_lancamentos: TTabItem;
    Rectangle4: TRectangle;
    btn_back_week: TSpeedButton;
    btn_next_week: TSpeedButton;
    lbl_data: TLabel;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    lbl_total_despesa: TLabel;
    Label9: TLabel;
    Layout10: TLayout;
    Layout11: TLayout;
    lbl_total_receitas: TLabel;
    Label11: TLabel;
    act_lancamentos: TChangeTabAction;
    tab_categoria: TTabItem;
    ToolBar2: TToolBar;
    Label7: TLabel;
    ToolBar3: TToolBar;
    Label12: TLabel;
    btn_ba: TSpeedButton;
    btn_categoria_add: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    tab_cadcategoria: TTabItem;
    act_cadCategoria: TChangeTabAction;
    act_categoria: TChangeTabAction;
    Label13: TLabel;
    Label14: TLabel;
    ToolBar4: TToolBar;
    Label15: TLabel;
    Categoria: TLabel;
    edt_cadCategoria: TEdit;
    LinkControlToField1: TLinkControlToField;
    ListView1: TListView;
    LinkListControlToField2: TLinkListControlToField;
    btn_categoria_back: TSpeedButton;
    btn_cadCategoria_back: TSpeedButton;
    btn_cadCategoria_ok: TSpeedButton;
    list_lancamentos: TListView;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    ImageList1: TImageList;
    btn_cadCategoria_delete: TSpeedButton;
    tbl_perfil: TTabItem;
    Rectangle6: TRectangle;
    ToolBar5: TToolBar;
    Rectangle7: TRectangle;
    btn_menu_Perfil: TSpeedButton;
    Rectangle8: TRectangle;
    rect_foto: TRectangle;
    Label16: TLabel;
    ListBox2: TListBox;
    ListBoxItem5: TListBoxItem;
    item_senha: TListBoxItem;
    btn_perfil_senha: TButton;
    act_perfil: TChangeTabAction;
    tab_idioma: TTabItem;
    act_idioma: TChangeTabAction;
    ToolBar6: TToolBar;
    Label17: TLabel;
    SpeedButton1: TSpeedButton;
    list_idioma: TListBox;
    item_portugues: TListBoxItem;
    item_ingles: TListBoxItem;
    ToolBar7: TToolBar;
    Label18: TLabel;
    list_moeda: TListBox;
    item_real: TListBoxItem;
    item_dolar: TListBoxItem;
    btn_idioma_ok: TSpeedButton;
    tab_cadLancamento: TTabItem;
    ToolBar8: TToolBar;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    btn_cadLancamento_ok: TSpeedButton;
    list_cad_lancamentos: TListBox;
    ListBoxItem11: TListBoxItem;
    ListBoxItem12: TListBoxItem;
    ListBoxItem13: TListBoxItem;
    ListBoxItem14: TListBoxItem;
    btn_lan_ontem: TButton;
    btn_lan_hoje: TButton;
    btn_lan_data: TButton;
    edt_lan_valor: TEdit;
    cbx_lan_categoria: TComboBox;
    edt_lan_descricao: TEdit;
    act_cadLancamento: TChangeTabAction;
    lbl_cadUsuario: TLabel;
    rec_cadConta: TRectangle;
    Label8: TLabel;
    edt_conta_email: TEdit;
    Label10: TLabel;
    edt_conta_senha: TEdit;
    btn_cria_conta: TButton;
    edt_contaNome: TEdit;
    Label20: TLabel;
    ToolBar9: TToolBar;
    Label1: TLabel;
    btn_novaconta_back: TSpeedButton;
    btn_persil_logout: TSpeedButton;
    act_login: TChangeTabAction;
    act_sheet: TfgActionSheet;
    act_fotoCamera: TTakePhotoFromCameraAction;
    act_fotoBiblioteca: TTakePhotoFromLibraryAction;
    item_nome: TListBoxItem;
    btn_perfil_nome: TButton;
    edt_perfilnome: TEdit;
    edt_perfil_senha: TEdit;
    BitmapListAnimation1: TBitmapListAnimation;
    rect_data: TRectangle;
    edt_lan_data: TDateEdit;
    LinkListControlToField3: TLinkListControlToField;
    procedure bt_acessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_menuClick(Sender: TObject);
    procedure item_menu_LancamentosClick(Sender: TObject);
    procedure item_menu_CategoriaClick(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btn_cadCategoria_backClick(Sender: TObject);
    procedure btn_categoria_backClick(Sender: TObject);
    procedure btn_cadCategoria_okClick(Sender: TObject);
    procedure btn_categoria_addClick(Sender: TObject);
    procedure btn_baClick(Sender: TObject);
    procedure btn_cadCategoria_deleteClick(Sender: TObject);
    procedure item_menu_PerfilClick(Sender: TObject);
    procedure btn_idioma_backClick(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
    procedure btn_menu_PerfilClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_back_weekClick(Sender: TObject);
    procedure btn_next_weekClick(Sender: TObject);
    procedure lbl_cadUsuarioClick(Sender: TObject);
    procedure btn_cria_contaClick(Sender: TObject);
    procedure btn_novaconta_backClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_persil_logoutClick(Sender: TObject);
    procedure act_fotoCameraDidFinishTaking(Image: TBitmap);
    procedure act_fotoBibliotecaDidFinishTaking(Image: TBitmap);
    procedure btn_perfil_nomeClick(Sender: TObject);
    procedure btn_perfil_senhaClick(Sender: TObject);
    procedure item_portuguesClick(Sender: TObject);
    procedure item_inglesClick(Sender: TObject);
    procedure item_realClick(Sender: TObject);
    procedure item_dolarClick(Sender: TObject);
    procedure btn_idioma_okClick(Sender: TObject);
    procedure rect_fotoClick(Sender: TObject);
    procedure btn_lan_hojeClick(Sender: TObject);
    procedure btn_lan_ontemClick(Sender: TObject);
    procedure btn_lan_dataClick(Sender: TObject);
    procedure list_lancamentosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btn_cadLancamento_okClick(Sender: TObject);
    procedure edt_lan_valorKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure img_receitaClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure item_menu_PainelGerencialClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_index: Tfrm_index;
  mesLan,anoLan: Integer;
  moeda,idioma,simbolo_moeda:string;
  tipo_lancamento:string;
  operacao:string;
implementation

{$R *.fmx}

uses DataModulo;
{$R *.iPhone55in.fmx IOS}
{$R *.Surface.fmx MSWINDOWS}
{$R *.iPhone47in.fmx IOS}
{$R *.Macintosh.fmx MACOS}
{$R *.iPhone4in.fmx IOS}


Procedure FormatarMoeda( Componente : TObject; var Key: Char );
var
   valor_str  : String;
   valor  : double;
begin

        if Componente is TEdit then
        begin
                // Se tecla pressionada é um numero, backspace ou delete...
                if ( Key in ['0'..'9', #8, #9] ) then
                begin
                         // Salva valor do edit...
                         valor_str := TEdit( Componente ).Text;

                         // Valida vazio...
                         if valor_str = EmptyStr then
                                valor_str := '0,00';

                         // Se valor numerico, insere na string...
                         if Key in ['0'..'9'] then
                                valor_str := Concat( valor_str, Key ) ;

                         // Retira pontos e virgulas...
                         valor_str := Trim( StringReplace( valor_str, '.', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
                         valor_str := Trim( StringReplace( valor_str, ',', '', [rfReplaceAll, rfIgnoreCase] ) ) ;

                         // Inserindo 2 casas decimais...
                         valor := StrToFloat( valor_str ) ;
                         valor := ( valor / 100 ) ;

                         // Retornando valor tratado ao edit...
                         TEdit( Componente ).Text := FormatFloat( '###,##0.00', valor ) ;

                         // Reposiciona cursor...
                         TEdit( Componente ).SelStart := Length( TEdit( Componente ).Text );
                end;

                // Se nao é key importante, reseta...
                if Not( Key in [#8, #9] ) then
                        key := #0;
        end;

end;


function NomeMes():String;
Begin
  if idioma = 'en-us'
    then begin
         case mesLan of
        1: Result := 'January';
        2: Result := 'February';
        3: Result := 'MARCH';
        4: Result := 'April';
        5: Result := 'May';
        6: Result := 'June';
        7: Result := 'July';
        8: Result := 'August';
        9: Result := 'September';
        10: Result := 'October';
        11: Result := 'November';
        12: Result := 'December';
      end;
   end;
  if idioma = 'pt-br'
    then begin
         case mesLan of
        1 : Result:='Janeiro';
        2 : Result:='Fevereiro';
        3 : Result:='MARÇO';
        4 : Result:='Abril';
        5 : Result:='Maio';
        6 : Result:='Junho';
        7 : Result:='Julho';
        8 : Result:='Agosto';
        9 : Result:='Setembro';
        10 : Result:='Outubro';
        11 : Result:='Novembro';
        12 : Result:='Dezembro';
      end;
    end;


End;


procedure Trata_moeda_e_Linguagem();
begin
    dm.qry_perfil.Active:=false;
    dm.qry_perfil.Active:=true;

    moeda := dm.qry_perfil.FieldByName('usu_moeda').AsString;
    idioma := dm.qry_perfil.FieldByName('usu_idioma').AsString;

    //tratar telas.
    if idioma = 'pt-br'
    then begin
        frm_index.lbl_main_saldoGeral.Text:= 'SALDO GERAL';
        frm_index.lbl_main_receita.Text:= 'RECEITAS';
        frm_index.lbl_main_despesas.Text:= 'DESPESAS';
        frm_index.item_menu_PainelGerencial.Text :='PAINEL GERENCIAL';
        frm_index.item_menu_Lancamentos.Text :='LANÇAMENTOS';
        frm_index.item_menu_Categoria.Text :='CATEGORIA';
        frm_index.item_menu_Perfil.Text :='PERFIL';
    end;


    if idioma = 'en-us'
    then begin
        frm_index.lbl_main_saldoGeral.Text:= 'PAYABLE';
        frm_index.lbl_main_receita.Text:= 'RECEIVABLE';
        frm_index.lbl_main_despesas.Text:= 'BALANCE';
        frm_index.item_menu_PainelGerencial.Text :='DASHBOARD';
        frm_index.item_menu_Lancamentos.Text :='FINANCIAL POSTINGS';
        frm_index.item_menu_Categoria.Text :='CATEGORIES';
        frm_index.item_menu_Perfil.Text :='PROFILE';
    end;


     if moeda = 'BRL'
          then
             simbolo_moeda := 'R$'
           else
              simbolo_moeda := 'US$';
end;

procedure Calcula_painel();
var
    saldo : double;

Begin
       //Lista Soma receitas
  dm.qry_geral.Active := false;
  dm.qry_geral.sql.Clear;
  dm.qry_geral.sql.Add(' SELECT IFNULL(SUM(CASE WHEN lan_tipo = ''C'' THEN lan_valor ELSE 0 END),0) AS VALOR_REC, '+#13+
                       ' IFNULL(SUM(CASE WHEN lan_tipo = ''D'' THEN lan_valor ELSE 0 END),0) AS VALOR_DESP        '+#13+
                       ' From tbl_lancamento as l INNER JOIN tbl_categoria c on (l.lan_catcodigo = c.cat_codigo)  '+#13+
                       ' WHERE strftime(''%m'', l.lan_data) = ' + QuotedStr(FormatFloat('00',MonthOf(Now)))        +#13+
                       ' AND strftime(''%Y'', l.lan_data) = ' + QuotedStr(FormatFloat('0000',YearOf(Now)))         +#13);

  dm.qry_geral.Active := True;

  saldo := dm.qry_geral.FieldByName('VALOR_REC').AsFloat - dm.qry_geral.FieldByName('VALOR_DESP').AsFloat;


  frm_index.lbl_total_rec_main.Text := simbolo_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_REC').AsFloat);
  frm_index.lbl_total_desp_main.Text  := simbolo_moeda  + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_DESP').AsFloat);
  frm_index.lbl_saldo_main.Text  := simbolo_moeda + FormatFloat('#,##0.00',saldo);

      if (saldo < 0)
        then begin
             frm_index.lbl_saldo_main.Text := '- ' + frm_index.lbl_saldo_main.Text;
        end;


  dm.qry_geral.Active := false;


End;

procedure Lista_lancamentos(mes,ano:string);
var
   sql:string;
begin
    try
        //Lista Lancamentos mensais
        dm.qry_lancamento.Active := False;
        dm.qry_lancamento.sql.Clear;
        dm.qry_lancamento.sql.Add(' Select l.*,c.cat_descriao as CATEGORIA '+
                                  ' From tbl_lancamento as l '+
                                  ' inner join tbl_categoria c '+
                                  ' on (l.lan_catcodigo = c.cat_codigo) '+
                                  ' WHERE strftime(''%m'', l.lan_data) =  ' + QuotedStr(mes)+
                                  ' AND strftime(''%Y'', l.lan_data) = '+ QuotedStr(ano) );





       sql := dm.qry_lancamento.sql.Text;

       dm.qry_lancamento.Active := true;

        //Acertar texto na tela
        frm_index.lbl_data.Text := UpperCase(NomeMes()+' '+ano);


        //Lista Soma receitas
        dm.qry_geral.Active := false;
        dm.qry_geral.sql.Clear;
        dm.qry_geral.sql.Add('SELECT IFNULL(SUM(CASE WHEN lan_tipo = ''C'' THEN lan_valor ELSE 0 END),0) AS VALOR_REC, ');
        dm.qry_geral.sql.Add(       'IFNULL(SUM(CASE WHEN lan_tipo = ''D'' THEN lan_valor ELSE 0 END),0) AS VALOR_DESP ');
        dm.qry_geral.sql.Add('From tbl_lancamento as l ');
        dm.qry_geral.sql.Add('INNER JOIN tbl_categoria c on (l.lan_catcodigo = c.cat_codigo)');
        dm.qry_geral.sql.Add('WHERE strftime(''%m'', l.lan_data) = '+ QuotedStr(mes));
        dm.qry_geral.sql.Add('AND strftime(''%Y'', l.lan_data) = '+ QuotedStr(ano));
  
        dm.qry_geral.Active := True;

        frm_index.lbl_total_receitas.Text := simbolo_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_REC').AsFloat);
        frm_index.lbl_total_despesa.Text  := simbolo_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_DESP').AsFloat);
        dm.qry_geral.Active := false;
     except
        frm_index.lbl_total_receitas.Text := simbolo_moeda + FormatFloat('#,##0.00',0);
        frm_index.lbl_total_despesa.Text  := simbolo_moeda + FormatFloat('#,##0.00',0);
    end;



end;

procedure Tfrm_index.btn_menuClick(Sender: TObject);
begin
   MultiView1.Visible := True;
end;

procedure Tfrm_index.btn_menu_PerfilClick(Sender: TObject);
begin
        act_main.ExecuteTarget(Sender);
end;

procedure Tfrm_index.btn_next_weekClick(Sender: TObject);
begin
    mesLan := mesLan + 1;
    if(mesLan > 12)
      then begin
         mesLan := 1;
         anoLan := anoLan + 1;
      end;


    //Atualiza Lançamentos
    Lista_lancamentos(FormatFloat('00',mesLan),FormatFloat('0000',anoLan  ));
end;

procedure Tfrm_index.btn_perfil_nomeClick(Sender: TObject);
begin
    if btn_perfil_nome.Text = 'Alterar'
        then begin
            edt_perfilnome.Visible := true;
            edt_perfilnome.Text := item_nome.Text;
            btn_perfil_nome.Text := 'Salvar';
            item_nome.Text := '';
            edt_perfilnome.SetFocus;
        end
        else begin
            edt_perfilnome.Visible := false;
            btn_perfil_nome.Text := 'Alterar';
            item_nome.Text := edt_perfilnome.Text;

            if not(dm.qry_perfil.State in dsEditModes)
              then begin
                dm.qry_perfil.Edit;
              end;

              dm.qry_perfil.FieldByName('usu_nome').Value:= edt_perfilnome.Text;
              dm.qry_perfil.Post;
        end;

end;

procedure Tfrm_index.btn_perfil_senhaClick(Sender: TObject);
begin
 if btn_perfil_senha.Text = 'Alterar'
        then begin
            edt_perfil_senha.Visible := true;
            btn_perfil_senha.Text := 'Salvar';
            item_senha.Text := '';
            edt_perfil_senha.SetFocus;
        end
        else begin
            edt_perfil_senha.Visible := false;
            btn_perfil_senha.Text := 'Alterar';
            item_senha.Text := 'Alterar Senha';

            if not(dm.qry_perfil.State in dsEditModes)
              then begin
                dm.qry_perfil.Edit;
              end;

              dm.qry_perfil.FieldByName('usu_senha').Value:= edt_perfil_senha.Text;
              dm.qry_perfil.Post;
        end;
end;

procedure Tfrm_index.btn_novaconta_backClick(Sender: TObject);
begin
    frm_index.rec_cadConta.Visible := false;
end;

procedure Tfrm_index.bt_acessarClick(Sender: TObject);
begin
    //tratar login
    dm.qry_geral.Active := False;
    dm.qry_geral.SQL.Clear;
    dm.qry_geral.SQL.Add('SELECT * FROM tbl_usuario WHERE usu_email = :usu_email AND usu_senha = :usu_senha');
    dm.qry_geral.ParamByName('usu_email').Value := edt_email.Text;
    dm.qry_geral.ParamByName('usu_senha').Value := edt_senha.Text;
    dm.qry_geral.Active := True;

    if dm.qry_geral.RecordCount < 0
        then begin
          ShowMessage('Email ou senha inválida');
          Exit
        end;

    dm.qry_geral.Active := False;
    dm.qry_geral.SQL.Clear;
    dm.qry_geral.SQL.Add('UPDATE tbl_usuario SET usu_status = ''T''');
    dm.qry_geral.ExecSQL;

    Trata_moeda_e_Linguagem();

    Calcula_painel();
    act_main.ExecuteTarget(Self);
end;

procedure Tfrm_index.edt_lan_valorKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
      FormatarMoeda(edt_lan_valor, KeyChar);
end;

procedure Tfrm_index.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.qry_lancamento.Active := False;
end;

procedure Tfrm_index.FormCreate(Sender: TObject);
begin

    tb_control.ActiveTab := tab_login;
    tb_control.TabPosition := TTabPosition.None;
    MultiView1.HideMaster;
end;

procedure Tfrm_index.FormShow(Sender: TObject);
begin
     //tratar login
    dm.qry_geral.Active := False;
    dm.qry_geral.SQL.Clear;
    dm.qry_geral.SQL.Add('SELECT * FROM tbl_usuario WHERE usu_status = ''T''');
    dm.qry_geral.Active := True;

    Trata_moeda_e_Linguagem();

    if dm.qry_geral.RecordCount > 0
        then begin
          Calcula_painel;
          act_main.ExecuteTarget(Sender);
        end;

    //abri qery lançamentos
    mesLan := MonthOf(now);
    anoLan := YearOf(now);
    Lista_lancamentos(FormatFloat('00',mesLan),FormatFloat('0000',anoLan));

end;

procedure Tfrm_index.Image2Click(Sender: TObject);
begin
    dm.qry_categoria.Active := False;
    dm.qry_categoria.Active := True;

    dm.qry_lancamento.Active := False;
    dm.qry_lancamento.Active := True;

    //Limpa Campos
    edt_lan_valor.Text := '';
    edt_lan_descricao.Text :='';
    edt_lan_data.Date := Date();
    rect_data.Visible := false;

    btn_lan_data.TextSettings.FontColor :=  $FF060606;
    btn_lan_ontem.TextSettings.FontColor :=  $FF060606;
    btn_lan_ontem.TextSettings.FontColor :=  $FF0C61A7;

    // Colocar em modo de INSERÇÃO...
    dm.qry_lancamento.Append;

    tipo_lancamento :=  'D';
    operacao:='I';

    act_cadLancamento.ExecuteTarget(Sender);

end;

procedure Tfrm_index.img_receitaClick(Sender: TObject);
begin

    dm.qry_categoria.Active := False;
    dm.qry_categoria.Active := True;




    //Limpa Campos
    edt_lan_valor.Text := '';
    edt_lan_descricao.Text :='';
    edt_lan_data.Date := Date();
    rect_data.Visible := false;

    btn_lan_data.TextSettings.FontColor :=  $FF060606;
    btn_lan_ontem.TextSettings.FontColor :=  $FF060606;
    btn_lan_ontem.TextSettings.FontColor :=  $FF0C61A7;

    // Colocar em modo de edicao...
    dm.qry_lancamento.Append;

    tipo_lancamento :=  'C';
    operacao:='I';

    act_cadLancamento.ExecuteTarget(Sender);


end;

procedure Tfrm_index.item_dolarClick(Sender: TObject);
begin
    item_real.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;
    item_dolar.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
end;

procedure Tfrm_index.item_inglesClick(Sender: TObject);
begin
    item_portugues.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;
    item_ingles.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
end;

procedure Tfrm_index.item_portuguesClick(Sender: TObject);
begin
    item_portugues.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
    item_ingles.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;
end;

procedure Tfrm_index.item_realClick(Sender: TObject);
begin
    item_real.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
    item_dolar.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;
end;

procedure Tfrm_index.lbl_cadUsuarioClick(Sender: TObject);
begin
      rec_cadConta.Visible := true;
      edt_contaNome.SetFocus;
end;

procedure Tfrm_index.item_menu_LancamentosClick(Sender: TObject);
begin

    mesLan := MonthOf(now);
    anoLan := YearOf(now);
    //Atualiza Lançamentos
    Lista_lancamentos(FormatFloat('00',mesLan),FormatFloat('0000',anoLan));

    //Esconde Menu lateral
    MultiView1.HideMaster;

    act_lancamentos.ExecuteTarget(Self);



end;

procedure Tfrm_index.item_menu_CategoriaClick(Sender: TObject);
begin
      //ATualiza Lista de Categoria
      dm.qry_categoria.Active := False;
      dm.qry_categoria.Active := True;

      //Esconde MultiView
      MultiView1.HideMaster;

      act_categoria.ExecuteTarget(Self);

end;

procedure Tfrm_index.item_menu_PainelGerencialClick(Sender: TObject);
begin
     MultiView1.HideMaster;
end;

procedure Tfrm_index.item_menu_PerfilClick(Sender: TObject);
var
   img :TStream;
begin

      dm.qry_perfil.Active := false;
      dm.qry_perfil.Active := true;

      if dm.qry_perfil.FieldValues['usu_foto'] <> null
        then begin
          img := dm.qry_perfil.CreateBlobStream(dm.qry_perfil.FieldByName('usu_foto'),TBlobStreamMode.bmRead);
          rect_foto.Fill.Bitmap.Bitmap.LoadFromStream(img);
        end;

      //tratamento Campo Nome
      btn_perfil_nome.Text := 'Alterar';
      edt_perfilnome.Visible:= false;
      item_nome.Text := dm.qry_perfil.FieldByName('usu_nome').AsString;

      //tratamento Campo Senha
      btn_perfil_senha.Text := 'Alterar';
      edt_perfil_senha.Visible:= false;
     // item_senha.Text := dm.qry_perfil.FieldByName('usu_senha').AsString;


      act_perfil.ExecuteTarget(Sender);
      MultiView1.HideMaster;
end;

procedure Tfrm_index.ListBoxItem5Click(Sender: TObject);
begin
    item_portugues.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;
    item_ingles.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;

    if dm.qry_perfil.FieldByName('usu_idioma').AsString = 'en-us'
       then begin
           item_ingles.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
       end
       else begin
           item_portugues.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
       end;

      item_real.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;
      item_dolar.ItemData.Accessory := TListBoxItemData.TAccessory.aNone;

       if dm.qry_perfil.FieldByName('usu_moeda').AsString = 'USD'
       then begin
           item_dolar.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
       end
       else begin
           item_real.ItemData.Accessory := TListBoxItemData.TAccessory.aCheckmark;
       end;

    act_idioma.ExecuteTarget(Sender);
end;

procedure Tfrm_index.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
      DM.qry_categoria.Edit;
      btn_cadCategoria_delete.Visible := true;
      act_cadCategoria.ExecuteTarget(Sender);
      edt_cadCategoria.SetFocus;
end;

procedure Tfrm_index.list_lancamentosItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
   i: Integer;
begin

    dm.qry_categoria.Active := False;
    dm.qry_categoria.Active := True;

    edt_lan_valor.Text := FormatFloat('#,##0.00',dm.qry_lancamento.FieldByName('lan_valor').AsFloat);



        //Preence campo categoria.
       for i := 1 to dm.qry_categoria.RecordCount do
          begin
             if dm.qry_categoria.FieldByName('cad_codigo').AsInteger =  dm.qry_lancamento.FieldByName('lan_catCodigo').AsInteger
                then
                  break;
            dm.qry_categoria.Next;
          end;


   edt_lan_descricao.Text := dm.qry_lancamento.FieldByName('lan_descricao').AsString;

   edt_lan_data.Date := dm.qry_lancamento.FieldByName('lan_data').AsDateTime;
   rect_data.Visible := True;

   btn_lan_data.TextSettings.FontColor :=  $FF0C61A7;
   btn_lan_ontem.TextSettings.FontColor :=  $FF060606;
   btn_lan_hoje.TextSettings.FontColor :=  $FF060606;


   tipo_lancamento :=  dm.qry_lancamento.FieldByName('lan_tipo').AsString;

   dm.qry_lancamento.Edit;
   operacao := 'A';

   act_cadLancamento.ExecuteTarget(Sender);

end;

procedure Tfrm_index.rect_fotoClick(Sender: TObject);
begin
    act_sheet.Show;
end;

procedure Tfrm_index.SpeedButton1Click(Sender: TObject);
begin
       act_perfil.ExecuteTarget(Sender);
end;

procedure Tfrm_index.SpeedButton2Click(Sender: TObject);
begin
    act_main.ExecuteTarget(Sender);
end;


procedure Tfrm_index.btn_cadLancamento_okClick(Sender: TObject);
begin
   if edt_lan_valor.Text = ''
      then begin
          ShowMessage('Informe o valor.');
          exit;
      end;


    if  dm.qry_lancamento.State in dsEditModes
          then begin
              dm.qry_lancamento.FieldByName('lan_valor').Value := StringReplace(edt_lan_valor.Text,'.','',[rfReplaceAll]);
              dm.qry_lancamento.FieldByName('lan_descricao').Value := edt_lan_descricao.Text;
              dm.qry_lancamento.FieldByName('lan_catCodigo').Value := dm.qry_categoria.FieldByName('lan_catCodigo').AsInteger;
              dm.qry_lancamento.FieldByName('lan_data').Value := edt_lan_data.Date;
              dm.qry_lancamento.FieldByName('lan_tipo').Value := tipo_lancamento;
              dm.qry_lancamento.Post;
          end;

      dm.qry_lancamento.Active := false;
      dm.qry_lancamento.Active := true;

    act_main.ExecuteTarget(Sender);
end;

procedure Tfrm_index.btn_persil_logoutClick(Sender: TObject);
begin
    dm.qry_geral.Active := False;
    dm.qry_geral.SQL.Clear;
    dm.qry_geral.SQL.Add(' UPDATE tbl_usuario SET usu_status = ''F'' ');
    dm.qry_geral.ExecSQL;

    act_login.ExecuteTarget(Sender);

end;

procedure Tfrm_index.act_fotoBibliotecaDidFinishTaking(Image: TBitmap);
begin
   //Atualizar perfil do usuário
    rect_foto.Fill.Bitmap.Bitmap := Image;

    if not (dm.qry_perfil.State in dsEditModes)
      then begin
          dm.qry_perfil.Edit;
      end;

      dm.qry_perfil.FieldByName('usu_foto').Assign(Image);
      dm.qry_perfil.Post;

end;

procedure Tfrm_index.act_fotoCameraDidFinishTaking(Image: TBitmap);
begin
    //Atualizar perfil do usuário
    rect_foto.Fill.Bitmap.Bitmap := Image;

    if not (dm.qry_perfil.State in dsEditModes)
      then begin
          dm.qry_perfil.Edit;
      end;

    dm.qry_perfil.FieldByName('usu_foto').Assign(Image);
    dm.qry_perfil.Post;

end;

procedure Tfrm_index.btn_back_weekClick(Sender: TObject);
begin
    mesLan := mesLan -1;
    if(mesLan = 0)
      then begin
         mesLan := 12;
         anoLan := anoLan -1;
      end;


    //Atualiza Lançamentos
    Lista_lancamentos(FormatFloat('00',mesLan),FormatFloat('0000',anoLan  ));
end;

procedure Tfrm_index.btn_baClick(Sender: TObject);
begin
    if dm.qry_lancamento.State in dsEditModes
        then dm.qry_lancamento.Cancel;

    act_main.ExecuteTarget(Sender);
end;

procedure Tfrm_index.btn_categoria_addClick(Sender: TObject);
begin
      dm.qry_categoria.Append;
      operacao:='I';
      btn_cadCategoria_delete.Visible := false;

      act_cadCategoria.ExecuteTarget(Sender);
      edt_cadCategoria.SetFocus;
end;

procedure Tfrm_index.btn_categoria_backClick(Sender: TObject);
begin
    DM.qry_categoria.Active := False;

    act_main.ExecuteTarget(Self);

end;

procedure Tfrm_index.btn_cria_contaClick(Sender: TObject);
begin
      if edt_contaNome.Text = ''
        then begin
          ShowMessage('Inserir o nome.');
          Exit
        end;

      if edt_conta_email.Text = ''
        then begin
          ShowMessage('Inserir o email.');
          Exit
        end;

       if edt_conta_senha.Text = ''
        then begin
          ShowMessage('Inserir a Senha.');
          Exit
        end;
         //Se existe, exclui usuario
        dm.qry_geral.Active := false;
        dm.qry_geral.SQL.Clear;
        dm.qry_geral.SQL.Add('DELETE FROM tbl_usuario');
        dm.qry_geral.ExecSQL;

        //inclui usuario
        dm.qry_geral.Active := false;
        dm.qry_geral.SQL.Clear;
        dm.qry_geral.SQL.Add('INSERT INTO tbl_usuario(usu_email,usu_senha,usu_status,usu_nome,usu_idioma,usu_moeda)');
        dm.qry_geral.SQL.Add('VALUES (:usu_email,:usu_senha,:usu_status,:usu_nome,:usu_idioma,:usu_moeda)');
        dm.qry_geral.ParamByName('usu_email').Value := edt_conta_email.Text;
        dm.qry_geral.ParamByName('usu_senha').Value := edt_conta_senha.Text;
        dm.qry_geral.ParamByName('usu_status').Value := 'T';
        dm.qry_geral.ParamByName('usu_nome').Value := edt_contaNome.Text;
        dm.qry_geral.ParamByName('usu_idioma').Value := 'pt-br';
        dm.qry_geral.ParamByName('usu_moeda').Value := 'BRL';
        dm.qry_geral.ExecSQL;

        Trata_moeda_e_Linguagem();

        act_main.ExecuteTarget(Sender);

end;

procedure Tfrm_index.btn_idioma_backClick(Sender: TObject);
begin
      act_perfil.ExecuteTarget(Sender);

end;

procedure Tfrm_index.btn_idioma_okClick(Sender: TObject);
begin
     if not(dm.qry_perfil.State in dsEditModes)
        then
          dm.qry_perfil.Edit;

      if item_ingles.ItemData.Accessory = TListBoxItemData.TAccessory.aCheckmark
        then
          dm.qry_perfil.FieldByName('usu_idioma').Value :=  'en-us'
       else
          dm.qry_perfil.FieldByName('usu_idioma').Value :=  'pt-br';

       if item_dolar.ItemData.Accessory = TListBoxItemData.TAccessory.aCheckmark
        then
          dm.qry_perfil.FieldByName('usu_moeda').Value :=  'USD'
       else
          dm.qry_perfil.FieldByName('usu_moeda').Value :=  'BRL';

      dm.qry_perfil.Post;


      //Trata Moeda e Liguagem
      Trata_moeda_e_Linguagem();

      act_perfil.ExecuteTarget(Sender);

end;

procedure Tfrm_index.btn_lan_dataClick(Sender: TObject);
begin
    btn_lan_ontem.TextSettings.FontColor :=  $FF060606;
    btn_lan_hoje.TextSettings.FontColor :=  $FF060606;

    if btn_lan_data.TextSettings.FontColor <> $FF0C61A7
       then
           btn_lan_data.TextSettings.FontColor :=  $FF0C61A7
       else
           btn_lan_data.TextSettings.FontColor :=  $FF060606;

    rect_data.Visible := true;
end;

procedure Tfrm_index.btn_lan_hojeClick(Sender: TObject);
begin
    btn_lan_ontem.TextSettings.FontColor :=  $FF060606;
    btn_lan_data.TextSettings.FontColor :=  $FF060606;
    edt_lan_data.Date := Date();
    rect_data.Visible := False;

    if btn_lan_hoje.TextSettings.FontColor <> $FF0C61A7
       then
           btn_lan_hoje.TextSettings.FontColor :=  $FF0C61A7
       else
           btn_lan_hoje.TextSettings.FontColor :=  $FF060606;
end;

procedure Tfrm_index.btn_lan_ontemClick(Sender: TObject);
begin
    btn_lan_hoje.TextSettings.FontColor :=  $FF060606;
    btn_lan_data.TextSettings.FontColor :=  $FF060606;
    edt_lan_data.Date := Date()-1;
    rect_data.Visible := False;

    if btn_lan_ontem.TextSettings.FontColor <> $FF0C61A7
       then
           btn_lan_ontem.TextSettings.FontColor :=  $FF0C61A7
       else
           btn_lan_ontem.TextSettings.FontColor :=  $FF060606;
end;

procedure Tfrm_index.btn_cadCategoria_backClick(Sender: TObject);
begin
       if dm.qry_categoria.State in dsEditModes
        then
          dm.qry_categoria.Cancel;


      act_categoria.ExecuteTarget(Self);

end;

procedure Tfrm_index.btn_cadCategoria_deleteClick(Sender: TObject);
begin
      MessageDlg('Confirma exclusão?', System.UITypes.TMsgDlgType.mtConfirmation,
    [
      System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
    ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
                dm.qry_categoria.Delete;
                act_categoria.ExecuteTarget(sender);
          end;
      end;
    end);
end;

procedure Tfrm_index.btn_cadCategoria_okClick(Sender: TObject);
begin
    if edt_cadCategoria.Text = ''
        then begin
          ShowMessage('Informe um nome para categoria');
          Exit
        end;

    if dm.qry_categoria.State in dsEditModes
        then  begin
             dm.qry_categoria.Post;
        end;


    act_categoria.ExecuteTarget(Sender);

end;

end.
