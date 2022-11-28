.class public Lcom/instabug/chat/network/InstabugPushNotificationTokenService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "InstabugPushNotificationTokenService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/instabug/chat/network/c/a;->a()Lcom/instabug/chat/network/c/a;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/instabug/chat/network/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/network/InstabugPushNotificationTokenService$a;

    invoke-direct {v1, p0}, Lcom/instabug/chat/network/InstabugPushNotificationTokenService$a;-><init>(Lcom/instabug/chat/network/InstabugPushNotificationTokenService;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/chat/network/InstabugPushNotificationTokenService;

    const/16 v1, 0xa19

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/chat/network/InstabugPushNotificationTokenService;->a()V

    return-void
.end method
