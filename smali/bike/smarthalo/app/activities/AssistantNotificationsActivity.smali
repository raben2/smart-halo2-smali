.class public Lbike/smarthalo/app/activities/AssistantNotificationsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AssistantNotificationsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;


# instance fields
.field private adapter:Llayout/adapters/AssistantNotificationsAdapter;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field binding:Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

.field private permissionsContainer:Landroid/view/View;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;

.field settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Landroid/view/View;)V
    .locals 1

    .line 61
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lbike/smarthalo/app/permissions/PermissionsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onItemsReady$1(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/models/AssistantNotificationType;Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;

    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;->onItemToggled(Lbike/smarthalo/app/models/AssistantNotificationType;Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->finish()V

    const v0, 0x7f010043

    const v1, 0x7f010046

    .line 103
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 51
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

    iput-object p1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

    .line 52
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V

    .line 54
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;->notificationItemsList:Landroid/widget/ListView;

    const/4 v1, 0x0

    const v2, 0x7f0d00ca

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;->notificationItemsList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;->notificationItemsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    const v0, 0x7f0a03f2

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->permissionsContainer:Landroid/view/View;

    const v0, 0x7f0a000e

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$H3oc7tMJkfgzGe_iTa_FuD-hVag;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$H3oc7tMJkfgzGe_iTa_FuD-hVag;-><init>(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f110063

    .line 63
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 64
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    iget-object v1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p0, p0, p1, v0, v1}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;

    return-void
.end method

.method public onItemsReady(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Llayout/adapters/AssistantNotificationsAdapter;

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$OPHw6vNS1SV5UNN4IfYCGMsFzvQ;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$OPHw6vNS1SV5UNN4IfYCGMsFzvQ;-><init>(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V

    invoke-direct {v0, p0, p1, v1}, Llayout/adapters/AssistantNotificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->adapter:Llayout/adapters/AssistantNotificationsAdapter;

    .line 83
    iget-object p1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->binding:Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/ActivityAssistantNotificationsBinding;->notificationItemsList:Landroid/widget/ListView;

    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->adapter:Llayout/adapters/AssistantNotificationsAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 71
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 72
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "AssistantSettings"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public togglePermissionsMessage(Z)V
    .locals 1

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->permissionsContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
