.class final Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Goal$1;
.super Ljava/lang/Object;
.source "GoalController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->handlePreTrackingSH1Goal(Lbike/smarthalo/app/models/SHGoal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Goal$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 334
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Goal$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/GoalController;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->showGoalIntroAnimation()V

    return-void
.end method
