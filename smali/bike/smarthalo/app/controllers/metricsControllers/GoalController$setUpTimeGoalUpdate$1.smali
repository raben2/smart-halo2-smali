.class final Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;
.super Ljava/lang/Object;
.source "GoalController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->setUpTimeGoalUpdate(Lbike/smarthalo/app/models/SHGoal;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $goal:Lbike/smarthalo/app/models/SHGoal;

.field final synthetic this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/models/SHGoal;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->$goal:Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Long;)V
    .locals 4

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->$goal:Lbike/smarthalo/app/models/SHGoal;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p1

    const-string v2, "goal.timestamp"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 254
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->$goal:Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, v0, v1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->updateGoalMetric(Lbike/smarthalo/app/models/SHGoal;D)V

    .line 255
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->$goal:Lbike/smarthalo/app/models/SHGoal;

    invoke-static {p1, v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->access$setCurrentGoal$p(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/models/SHGoal;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
