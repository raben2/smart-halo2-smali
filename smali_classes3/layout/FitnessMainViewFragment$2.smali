.class Llayout/FitnessMainViewFragment$2;
.super Ljava/lang/Object;
.source "FitnessMainViewFragment.java"

# interfaces
.implements Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/FitnessMainViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/FitnessMainViewFragment;


# direct methods
.method constructor <init>(Llayout/FitnessMainViewFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onTurnedOff$0(Llayout/FitnessMainViewFragment$2;)V
    .locals 2

    .line 267
    iget-object v0, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    invoke-static {v0}, Llayout/FitnessMainViewFragment;->access$300(Llayout/FitnessMainViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->toggleFitness(Z)V

    .line 268
    iget-object v0, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    iget-object v0, v0, Llayout/FitnessMainViewFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    invoke-virtual {v0, v1}, Llayout/statusBar/StatusBarLayout;->setStatus(Z)V

    return-void
.end method

.method public static synthetic lambda$onTurnedOff$1(Llayout/FitnessMainViewFragment$2;Ljava/lang/Runnable;)V
    .locals 0

    .line 275
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 276
    iget-object p1, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    invoke-static {p1}, Llayout/FitnessMainViewFragment;->access$300(Llayout/FitnessMainViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->dontRemindFitnessPrompt()Z

    return-void
.end method


# virtual methods
.method public onTurnedOff()Z
    .locals 4

    .line 264
    iget-object v0, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    invoke-virtual {v0}, Llayout/FitnessMainViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    invoke-static {v1}, Llayout/FitnessMainViewFragment;->access$300(Llayout/FitnessMainViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;

    move-result-object v1

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;->shouldPromptUserOnFitnessOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Llayout/-$$Lambda$FitnessMainViewFragment$2$dt3RBDrwWwKU9ngZuVIuY3yJI1s;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$FitnessMainViewFragment$2$dt3RBDrwWwKU9ngZuVIuY3yJI1s;-><init>(Llayout/FitnessMainViewFragment$2;)V

    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llayout/-$$Lambda$ADcx_u3R-GH4YH_Nj1L_AKLpbWo;

    invoke-direct {v2, v1}, Llayout/-$$Lambda$ADcx_u3R-GH4YH_Nj1L_AKLpbWo;-><init>(Ljava/lang/Runnable;)V

    new-instance v3, Llayout/-$$Lambda$FitnessMainViewFragment$2$4k4gBmWj_UBiwig-8LGnAMu0L2k;

    invoke-direct {v3, p0, v1}, Llayout/-$$Lambda$FitnessMainViewFragment$2$4k4gBmWj_UBiwig-8LGnAMu0L2k;-><init>(Llayout/FitnessMainViewFragment$2;Ljava/lang/Runnable;)V

    invoke-static {v0, v2, v3}, Llayout/customControls/FitnessOffAlertDialog;->show(Landroid/content/Context;Llayout/customControls/BaseAlertDialog$ClickContract;Llayout/customControls/BaseAlertDialog$ClickContract;)V

    const/4 v0, 0x1

    return v0

    .line 281
    :cond_0
    iget-object v0, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llayout/FitnessMainViewFragment;->access$200(Llayout/FitnessMainViewFragment;Z)V

    return v1
.end method

.method public onTurnedOn()Z
    .locals 2

    .line 258
    iget-object v0, p0, Llayout/FitnessMainViewFragment$2;->this$0:Llayout/FitnessMainViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llayout/FitnessMainViewFragment;->access$200(Llayout/FitnessMainViewFragment;Z)V

    const/4 v0, 0x0

    return v0
.end method
