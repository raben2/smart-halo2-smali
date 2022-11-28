.class public Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "AssistantNotificationsPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;

    .line 46
    iput-object p3, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 47
    iput-object p4, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 48
    iput-object p5, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 49
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 51
    iget-object p2, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;

    .line 52
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->hasAcceptedNotificationsPermissions(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->CALLS_PERMISSIONS:[Ljava/lang/String;

    .line 53
    invoke-static {p1, p3}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 51
    :goto_1
    invoke-interface {p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;->togglePermissionsMessage(Z)V

    .line 55
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->prepareListOfItems()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$Presenter;
    .locals 7

    .line 64
    new-instance v6, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v6
.end method

.method private prepareListOfItems()V
    .locals 8

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->context:Landroid/content/Context;

    invoke-static {v3}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->hasAcceptedNotificationsPermissions(Landroid/content/Context;)Z

    move-result v3

    .line 76
    iget-object v4, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->context:Landroid/content/Context;

    sget-object v5, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->CALLS_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v4, v5}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    .line 78
    new-instance v5, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v6, Lbike/smarthalo/app/models/AssistantNotificationType;->PhoneCalls:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingCalls()Z

    move-result v7

    invoke-direct {v5, v6, v7, v4}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->SMS:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingSMS()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 82
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "com.google.android.talk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const-string v6, "com.Slack"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_2
    const-string v6, "com.facebook.orca"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "com.google.android.gm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_4
    const-string v6, "com.tencent.mm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "com.whatsapp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->Slack:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingSlack()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :pswitch_1
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->Wechat:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWechat()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :pswitch_2
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->Whatsapp:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWhatsapp()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 90
    :pswitch_3
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->Messenger:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingMessenger()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :pswitch_4
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->Hangouts:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingHangouts()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 84
    :pswitch_5
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    sget-object v5, Lbike/smarthalo/app/models/AssistantNotificationType;->Gmail:Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGmail()Z

    move-result v6

    invoke-direct {v4, v5, v6, v3}, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;-><init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;->onItemsReady(Ljava/util/List;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c4004a1 -> :sswitch_5
        -0x3a01688a -> :sswitch_4
        -0x2067cf93 -> :sswitch_3
        0x36211dfc -> :sswitch_2
        0x3a63b8c3 -> :sswitch_1
        0x5a539273 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onItemToggled(Lbike/smarthalo/app/models/AssistantNotificationType;Z)V
    .locals 2

    .line 126
    iget-object v0, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getAssistantConfigChangedEvent(Lbike/smarthalo/app/models/AssistantNotificationType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 127
    sget-object v0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter$1;->$SwitchMap$bike$smarthalo$app$models$AssistantNotificationType:[I

    invoke-virtual {p1}, Lbike/smarthalo/app/models/AssistantNotificationType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "isAssistingSlack"

    .line 150
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "isAssistingWechat"

    .line 147
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    const-string p1, "isAssistingSMS"

    .line 144
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    const-string p1, "isAssistingMessenger"

    .line 141
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    const-string p1, "isAssistingWhatsapp"

    .line 138
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_5
    const-string p1, "isAssistingHangouts"

    .line 135
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_6
    const-string p1, "isAssistingGmail"

    .line 132
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_7
    const-string p1, "isAssistingCalls"

    .line 129
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->updateSetting(Ljava/lang/String;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDestroyed()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onViewResumed()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->hasAcceptedNotificationsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->context:Landroid/content/Context;

    sget-object v1, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->CALLS_PERMISSIONS:[Ljava/lang/String;

    .line 111
    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;->togglePermissionsMessage(Z)V

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/AssistantNotificationsPresenter;->prepareListOfItems()V

    :cond_1
    return-void
.end method
