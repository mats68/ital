USE [M2WEB]
INSERT [dbo].[Vnb] ([Name], [Guid], [CreaDate], [CreaUser], [ModDate], [ModUser], [ContactAddressId], [PackName], [WerkName], [ActiveFromDate], [UrlName], [Aktiv], [IANrInst], [DAOhneEingeschrBew]) 
  VALUES (N'Demo (it)', N'B367C1AF-40C8-4FD7-888D-42B5FDC688B9', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', 31336, N'demo_d_q.evu', N'Demo (online)', CAST(N'2020-11-16T00:00:00.000' AS DateTime), N'demo', 1, 0, 0)


INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'IA18_IT', N'VSE', 1, N'IA', N'Brunner.M2Web.Entities.FormEntities.VseIa18', N'VseIa18.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2142', 100, 4, N'Avviso installazione', N'installer;controller;ownerwithnumber;', N'', N'DC7A9942-4904-4464-B8CB-A992F3EF0636')

INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'AB18_IT', N'VSE', 1, N'AB', N'Brunner.M2Web.Entities.FormEntities.VseAb18', N'VseAb18.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2144', 150, 4, N'Ordinazione apparechi', N'installer;controller;', N'', N'B3ED11B3-1130-43E2-9E8C-5538797E0B74')

INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'TAG_IT', N'Allgemein', 1, N'TAG', N'Brunner.M2Web.Entities.FormEntities.Tag18', N'Tag18.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2146', 8, 4, N'Richiesta tecnica di allacciamento (RTA)', N'*', N'', N'021E924A-3B54-436F-817E-B260D5C102FA')

INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'MPP18_IT', N'Allgemein', 2, N'MPP', N'Brunner.M2Web.Entities.FormEntities.Mpp18', N'Mpp18.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2153', 200, 4, N'Rapporto di misura e di collaudo', N'installer;controller;', N'installer;controller;', N'B994C1BA-8331-4224-BA06-76739E5C9A18')

INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'SINA18_IT', N'Allgemein', 2, N'SiNa', N'Brunner.M2Web.Entities.FormEntities.SiNa18', N'SiNa18.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2151', 210, 4, N'Rapporto di Sicurezza per impianto elettrico (RaSi)', N'installer;controller;', N'*', N'E4AD678D-069C-4D70-B996-C486B0A76BC1')

INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'MPPPV20_IT', N'Allgemein', 2, N'PV MPP', N'Brunner.M2Web.Entities.FormEntities.MppPV20', N'MppPV20.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2155', 200, 4, N'Rapporto di misura e di collaudo fotovoltaico', N'installer;controller;ownerwithnumber;', N'installer;controller;ownerwithnumber;', N'2BF08225-D0ED-486B-B432-060E5E7F77A5')

INSERT [dbo].[FormType] ( [Name], [Variant], [Version], [DisplayName], [FormEntityClassName], [ViewTemplateName], [CreaDate], [CreaUser], [ModDate], [ModUser], [AllowMultipleInstallations], [TemplateId], [SortCrit], [SysMlLangId], [LongName], [CompanyType], [PdfFormType], [FormTypeGUID]) 
VALUES (N'MPP_IT', N'Allgemein', 1, N'MPP', N'Brunner.M2Web.Entities.FormEntities.MppVse1', N'MppVse1.cshtml', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:11.200' AS DateTime), N'Matthias', 0, N'2119', 200, 4, N'Rapporto di misura e di collaudo', N'installer;controller;', N'*', N'EA6F4538-34C6-4115-978C-7C39100CDE38')

DECLARE @ID_VNB INT;
SELECT @ID_VNB = Id from Vnb  where Name = 'Demo (it)'


DECLARE @ID_FormType INT;
SELECT @ID_FormType = Id from FormType where Name = 'IA18_IT' and SysMlLangId = 4 
INSERT FormChoice ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES  ( @ID_VNB, @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

SELECT @ID_FormType = Id from FormType where Name = 'AB18_IT' and SysMlLangId = 4 
INSERT FormChoice  ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES ( @ID_VNB,  @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

SELECT @ID_FormType = Id from FormType where Name = 'TAG_IT' and SysMlLangId = 4 
INSERT FormChoice  ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES ( @ID_VNB,  @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

SELECT @ID_FormType = Id from FormType where Name = 'MPP18_IT' and SysMlLangId = 4 
INSERT FormChoice ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES  ( @ID_VNB,  @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

SELECT @ID_FormType = Id from FormType where Name = 'SINA18_IT' and SysMlLangId = 4 
INSERT FormChoice ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES  ( @ID_VNB,  @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

SELECT @ID_FormType = Id from FormType where Name = 'MPPPV20_IT' and SysMlLangId = 4 
INSERT FormChoice ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES  ( @ID_VNB,  @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

SELECT @ID_FormType = Id from FormType where Name = 'MPP_IT' and SysMlLangId = 4 
INSERT FormChoice ( [VnbId], [FormTypeId], [CreaDate], [CreaUser], [ModDate], [ModUser]) VALUES   (@ID_VNB,  @ID_FormType, CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias', CAST(N'2020-11-16T09:28:03.373' AS DateTime), N'Matthias')

