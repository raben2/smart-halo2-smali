.class public Lcom/instabug/library/broadcast/LastContactedChangedBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "LastContactedChangedBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/broadcast/LastContactedChangedBroadcast$a;
    }
.end annotation


# static fields
.field public static final LAST_CONTACTED_AT:Ljava/lang/String; = "last_contacted_at"

.field public static final LAST_CONTACTED_CHANGED:Ljava/lang/String; = "User last contact at changed"

.field public static final TAG:Ljava/lang/String; = "LastContactedChangedBroadcast"


# instance fields
.field private mLastContactedMonitor:Lcom/instabug/library/broadcast/LastContactedChangedBroadcast$a;


# direct methods
.method public constructor <init>(Lcom/instabug/library/broadcast/LastContactedChangedBroadcast$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/broadcast/LastContactedChangedBroadcast;->mLastContactedMonitor:Lcom/instabug/library/broadcast/LastContactedChangedBroadcast$a;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "LastContactedChangedBroadcast"

    const-string p2, "onReceive"

    .line 1
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/library/broadcast/LastContactedChangedBroadcast;->mLastContactedMonitor:Lcom/instabug/library/broadcast/LastContactedChangedBroadcast$a;

    invoke-interface {p1}, Lcom/instabug/library/broadcast/LastContactedChangedBroadcast$a;->a()V

    return-void
.end method
