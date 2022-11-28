.class Lbike/smarthalo/app/controllers/AssistantController$2;
.super Landroid/content/BroadcastReceiver;
.source "AssistantController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/controllers/AssistantController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/AssistantController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/AssistantController;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController$2;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 231
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController$2;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/AssistantController;->access$000(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingCalls()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController$2;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lbike/smarthalo/app/controllers/AssistantController;->access$500(Lbike/smarthalo/app/controllers/AssistantController;Z)V

    return-void
.end method
