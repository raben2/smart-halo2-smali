.class public Lbike/smarthalo/app/services/NotificationsHandlerService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationsHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;
    }
.end annotation


# static fields
.field public static final GMAIL_APP_PACKAGE:Ljava/lang/String; = "com.google.android.gm"

.field public static final HANGOUTS_APP_PACKAGE:Ljava/lang/String; = "com.google.android.talk"

.field public static final MESSENGER_APP_PACKAGE:Ljava/lang/String; = "com.facebook.orca"

.field public static final NEW_NOTIFICATION_INTENT:Ljava/lang/String; = "new_notification_intent"

.field public static final NEW_NOTIFICATION_INTENT_PACKAGE:Ljava/lang/String; = "new_notification_intent_package"

.field private static final NOTIFICATION_MINIMUM_DELAY:J = 0x3e8L

.field public static final SLACK_APP_PACKAGE:Ljava/lang/String; = "com.Slack"

.field public static final SMS_APP_PACKAGES:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "NotificationsHandlerService"

.field public static final WECHAT_APP_PACKAGE:Ljava/lang/String; = "com.tencent.mm"

.field public static final WHATSAPP_APP_PACKAGE:Ljava/lang/String; = "com.whatsapp"


# instance fields
.field private previousShownNotification:Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;

.field private smsPackageLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.android.sms"

    const-string v1, "com.android.mms"

    const-string v2, "com.google.android.apps.messaging"

    const-string v3, "com.samsung.android.messaging"

    const-string v4, "com.handcent.app.nextsms"

    .line 31
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/services/NotificationsHandlerService;->SMS_APP_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lbike/smarthalo/app/services/NotificationsHandlerService;->SMS_APP_PACKAGES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/NotificationsHandlerService;->smsPackageLists:Ljava/util/List;

    return-void
.end method

.method private getNotificationType(Ljava/lang/String;)Lbike/smarthalo/app/models/AssistantNotificationType;
    .locals 1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.google.android.talk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "com.Slack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "com.facebook.orca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "com.google.android.gm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "com.whatsapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/services/NotificationsHandlerService;->smsPackageLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->SMS:Lbike/smarthalo/app/models/AssistantNotificationType;

    goto :goto_2

    .line 102
    :pswitch_0
    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->Slack:Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p1

    .line 100
    :pswitch_1
    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->Wechat:Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p1

    .line 98
    :pswitch_2
    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->Whatsapp:Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p1

    .line 96
    :pswitch_3
    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->Messenger:Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p1

    .line 94
    :pswitch_4
    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->Hangouts:Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p1

    .line 92
    :pswitch_5
    sget-object p1, Lbike/smarthalo/app/models/AssistantNotificationType;->Gmail:Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    return-object p1

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
.method public onCreate()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 58
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbike/smarthalo/app/services/NotificationsHandlerService;->getNotificationType(Ljava/lang/String;)Lbike/smarthalo/app/models/AssistantNotificationType;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 66
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->priority:I

    if-ltz v2, :cond_8

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingSMS()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lbike/smarthalo/app/models/AssistantNotificationType;->SMS:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-eq v1, v2, :cond_7

    :cond_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWhatsapp()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lbike/smarthalo/app/models/AssistantNotificationType;->Whatsapp:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-eq v1, v2, :cond_7

    :cond_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingMessenger()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lbike/smarthalo/app/models/AssistantNotificationType;->Messenger:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-eq v1, v2, :cond_7

    :cond_3
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingHangouts()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lbike/smarthalo/app/models/AssistantNotificationType;->Hangouts:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-eq v1, v2, :cond_7

    :cond_4
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGmail()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lbike/smarthalo/app/models/AssistantNotificationType;->Gmail:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-eq v1, v2, :cond_7

    :cond_5
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingWechat()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lbike/smarthalo/app/models/AssistantNotificationType;->Wechat:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-eq v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingSlack()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lbike/smarthalo/app/models/AssistantNotificationType;->Slack:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-ne v1, v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 77
    const-class v0, Lbike/smarthalo/app/services/NotificationsHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p1, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;

    invoke-direct {p1, p0, v1}, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;-><init>(Lbike/smarthalo/app/services/NotificationsHandlerService;Lbike/smarthalo/app/models/AssistantNotificationType;)V

    .line 79
    iget-object v0, p0, Lbike/smarthalo/app/services/NotificationsHandlerService;->previousShownNotification:Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 80
    iput-object p1, p0, Lbike/smarthalo/app/services/NotificationsHandlerService;->previousShownNotification:Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;

    .line 82
    new-instance p1, Landroid/content/Intent;

    const-string v0, "new_notification_intent"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "new_notification_intent_package"

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/services/NotificationsHandlerService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
