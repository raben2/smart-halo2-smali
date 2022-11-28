.class public final Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;
.super Ljava/lang/Object;
.source "AssistantNotificationsActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lbike/smarthalo/app/activities/AssistantNotificationsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lbike/smarthalo/app/activities/AssistantNotificationsActivity;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAnalyticsManager(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method public static injectSettingsStorageManager(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-void
.end method


# virtual methods
.method public injectMembers(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->analyticsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->injectAnalyticsManager(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->settingsStorageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-static {p1, v0}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->injectSettingsStorageManager(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity_MembersInjector;->injectMembers(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V

    return-void
.end method
