.class final Lbike/smarthalo/app/controllers/metricsControllers/GoalController$onStart$1;
.super Ljava/lang/Object;
.source "GoalController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "trackingState",
        "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$onStart$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$onStart$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    const-string v1, "trackingState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->access$onNewTrackingState(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$onStart$1;->accept(Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)V

    return-void
.end method
