@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Singleton Interface view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Zi_EMPSingleton_S as select from I_Language
left outer join zemployee_ram as zemp on 1 = 1
composition[0..*] of ZI_EMP_S as _emp
{
    key 1 as EmpSingleton,
    max(zemp.changed_at) as maxChangedat,
    _emp
}
where I_Language.Language  = $session.system_language
 