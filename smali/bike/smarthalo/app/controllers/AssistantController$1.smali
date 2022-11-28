.class Lbike/smarthalo/app/controllers/AssistantController$1;
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

    .line 115
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    .line 118
    iget-object v1, v0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-static {v1}, Lbike/smarthalo/app/controllers/AssistantController;->access$000(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-result-object v1

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    .line 122
    invoke-static {v2}, Lbike/smarthalo/app/controllers/AssistantController;->access$100(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    move-result-object v2

    invoke-interface {v2}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getIsConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "new_notification_intent_package"

    move-object/from16 v3, p2

    .line 126
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/AssistantNotificationType;

    .line 127
    iget-object v3, v0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-static {v3}, Lbike/smarthalo/app/controllers/AssistantController;->access$200(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v3

    invoke-static {v2}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getNotificationReceivedEvent(Lbike/smarthalo/app/models/AssistantNotificationType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v4

    invoke-interface {v3, v4}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 129
    iget-object v3, v0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-static {v3}, Lbike/smarthalo/app/controllers/AssistantController;->access$400(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v3

    new-instance v15, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;

    new-instance v5, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v4, 0xc6

    const/16 v6, 0xdb

    const/16 v7, 0x8f

    invoke-direct {v5, v7, v6, v4}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    new-instance v8, Lbike/smarthalo/sdk/models/SHColour;

    const/4 v14, 0x0

    invoke-direct {v8, v7, v6, v14}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    const/16 v7, 0xc8

    const/16 v9, 0x32

    const/16 v10, 0x64

    const/16 v11, 0xa

    const/4 v12, 0x1

    sget-object v13, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->Text:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v4, v0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    .line 138
    invoke-static {v4, v2}, Lbike/smarthalo/app/controllers/AssistantController;->access$300(Lbike/smarthalo/app/controllers/AssistantController;Lbike/smarthalo/app/models/AssistantNotificationType;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x0

    move-object v4, v15

    move-object v6, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v2

    const/4 v2, 0x0

    move-object/from16 v14, v16

    invoke-direct/range {v4 .. v14}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    .line 129
    invoke-interface {v3, v15}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendNotification(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    .line 142
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWithSound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, v0, Lbike/smarthalo/app/controllers/AssistantController$1;->this$0:Lbike/smarthalo/app/controllers/AssistantController;

    invoke-static {v3}, Lbike/smarthalo/app/controllers/AssistantController;->access$400(Lbike/smarthalo/app/controllers/AssistantController;)Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object v3

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$assistantVolume()I

    move-result v1

    sget-object v4, Lbike/smarthalo/app/models/SHSounds;->sms_sound:[B

    invoke-interface {v3, v1, v2, v4}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->playSound(II[B)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
