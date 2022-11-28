.class public Lbike/smarthalo/sdk/SHNotificationManager;
.super Ljava/lang/Object;
.source "SHNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/SHNotificationManager$NotifType;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "sh_device_service_notification"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Missing bluetooth permissions"

.field public static final SERVICE_CHANNEL_ID:Ljava/lang/String; = "sh_device_service"

.field private static final SERVICE_CHANNEL_NAME:Ljava/lang/String; = "Bluetooth connection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getForegroundServiceNotification(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 6

    .line 76
    sget v0, Lbike/smarthalo/sdk/R$string;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "bike.smarthalo.sdk.BROADCAST_LAUNCH_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v1, p0}, Lbike/smarthalo/sdk/SHNotificationManager;->getNotificationPendingIntentAndCancelIfNeeded(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 79
    sget v2, Lbike/smarthalo/sdk/R$string;->connecting:I

    goto :goto_0

    :cond_0
    sget v2, Lbike/smarthalo/sdk/R$string;->connected:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 80
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sh_device_service"

    .line 82
    invoke-static {p0, v2}, Lbike/smarthalo/sdk/SHNotificationManager;->getNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v4, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 87
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    sget p2, Lbike/smarthalo/sdk/R$drawable;->service_notification_connecting:I

    goto :goto_1

    :cond_1
    sget p2, Lbike/smarthalo/sdk/R$drawable;->service_notification_connected:I

    .line 91
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lbike/smarthalo/sdk/R$drawable;->ic_launcher:I

    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 94
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, -0x1

    .line 95
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 98
    :cond_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 150
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method private static getNotificationPendingIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bike.smarthalo.sdk.BROADCAST_LAUNCH_APP"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/16 v2, 0x37

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1, v2, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p1, v2, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getNotificationPendingIntentAndCancelIfNeeded(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 0
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    invoke-static {p0, p1}, Lbike/smarthalo/sdk/SHNotificationManager;->getNotificationPendingIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceStopNotification(Lbike/smarthalo/sdk/SHNotificationManager$NotifType;Landroid/content/Context;)Landroid/app/Notification;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    sget-object v0, Lbike/smarthalo/sdk/SHNotificationManager$1;->$SwitchMap$bike$smarthalo$sdk$SHNotificationManager$NotifType:[I

    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 40
    :pswitch_0
    sget p0, Lbike/smarthalo/sdk/R$string;->no_permission_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 41
    sget v1, Lbike/smarthalo/sdk/R$string;->no_permission:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lbike/smarthalo/sdk/RequestPermissionsActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x24000000

    .line 43
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    invoke-static {v2, p1}, Lbike/smarthalo/sdk/SHNotificationManager;->getNotificationPendingIntentAndCancelIfNeeded(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    .line 36
    :pswitch_1
    sget p0, Lbike/smarthalo/sdk/R$string;->no_feature_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    sget v1, Lbike/smarthalo/sdk/R$string;->no_feature:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    :goto_0
    const-string v3, "sh_device_service_notification"

    .line 50
    invoke-static {p1, v3}, Lbike/smarthalo/sdk/SHNotificationManager;->getNotificationBuilder(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, -0x1

    .line 53
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 54
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 57
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    sget v1, Lbike/smarthalo/sdk/R$drawable;->service_notification_connected:I

    .line 60
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lbike/smarthalo/sdk/R$drawable;->ic_launcher:I

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 63
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result p0

    if-nez p0, :cond_0

    .line 64
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    if-nez v2, :cond_1

    .line 68
    new-instance p0, Landroid/content/Intent;

    const-string v0, "bike.smarthalo.sdk.BROADCAST_LAUNCH_APP"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p0, p1}, Lbike/smarthalo/sdk/SHNotificationManager;->getNotificationPendingIntentAndCancelIfNeeded(Landroid/content/Intent;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 72
    :cond_1
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static initializeNotificationChannel(Landroid/content/Context;)V
    .locals 6

    .line 131
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "sh_device_service_notification"

    const-string v2, "Missing bluetooth permissions"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 135
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "sh_device_service"

    const-string v4, "Bluetooth connection"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 136
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 138
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v2, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string v1, "notification"

    .line 141
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 144
    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static showNotification(Landroid/app/Notification;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "notification"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    const/16 v0, 0x65

    .line 125
    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
