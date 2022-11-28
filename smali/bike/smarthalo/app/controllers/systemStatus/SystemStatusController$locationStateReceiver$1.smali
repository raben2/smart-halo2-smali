.class public final Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemStatusController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "bike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;->this$0:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;->this$0:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->access$sendLocationNotification(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)Z

    return-void
.end method
