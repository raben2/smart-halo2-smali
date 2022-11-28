.class final Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;
.super Ljava/lang/Object;
.source "GoalController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->delayProgressOff()V
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
        "Ljava/lang/Long;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "",
        "accept",
        "(Ljava/lang/Long;)V"
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

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 299
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-virtual {p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->removeProgress()V

    .line 300
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-static {p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->access$getHasActiveGoalSource$p(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
