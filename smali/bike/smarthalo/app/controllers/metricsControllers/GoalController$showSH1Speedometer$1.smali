.class final Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;
.super Ljava/lang/Object;
.source "GoalController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->showSH1Speedometer(Lbike/smarthalo/app/models/SHGoal;)V
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
.field final synthetic $currentGoal:Lbike/smarthalo/app/models/SHGoal;

.field final synthetic $currentUser:Lbike/smarthalo/app/models/SHUser;

.field final synthetic this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/SHUser;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->$currentGoal:Lbike/smarthalo/app/models/SHGoal;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->$currentUser:Lbike/smarthalo/app/models/SHUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 286
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-virtual {p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->getNavigationStateController()Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;->canShowGoalTrackingAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    float-to-double v0, p1

    .line 287
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->$currentGoal:Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->$currentGoal:Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object p1

    const-string v2, "currentGoal.goal"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 288
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->$currentUser:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "currentUser.distanceMetric"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->showSpeedometerAnimation(IIZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
