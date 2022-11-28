.class Lbike/smarthalo/app/activities/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/MainActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onFirmwareUpdateClick$0(Lbike/smarthalo/app/activities/MainActivity$1;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-static {v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->access$100(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    return-void
.end method


# virtual methods
.method public onFirmwareUpdateClick()V
    .locals 4

    .line 350
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/MainActivity;->access$000(Lbike/smarthalo/app/activities/MainActivity;)Llayout/RightDrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/MainActivity;->access$000(Lbike/smarthalo/app/activities/MainActivity;)Llayout/RightDrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/MainActivity;->access$000(Lbike/smarthalo/app/activities/MainActivity;)Llayout/RightDrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->close()V

    .line 353
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const-wide/16 v1, 0xfa

    new-instance v3, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$1$ssBBvlNeCuPD4CQayvXXKNZZsWg;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$1$ssBBvlNeCuPD4CQayvXXKNZZsWg;-><init>(Lbike/smarthalo/app/activities/MainActivity$1;)V

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-static {v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->access$100(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuAvailability;)V

    .line 358
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$1;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/MainActivity;->access$000(Lbike/smarthalo/app/activities/MainActivity;)Llayout/RightDrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Llayout/RightDrawerLayout;->removeFirmwareNotification()V

    return-void
.end method
