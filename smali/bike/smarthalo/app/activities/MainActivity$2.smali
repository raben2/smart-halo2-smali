.class Lbike/smarthalo/app/activities/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Llayout/DropMenuFragment$DropMenuInterface;


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

    .line 384
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$2;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropMenuRequestClose(Z)V
    .locals 1

    .line 395
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$2;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/MainActivity;->access$200(Lbike/smarthalo/app/activities/MainActivity;)Llayout/MapViewFragment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llayout/MapViewFragment;->showMapOverlay(Z)V

    .line 396
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$2;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-virtual {p1}, Lbike/smarthalo/app/activities/MainActivity;->onClickSettingsIcon()V

    return-void
.end method

.method public onDropMenuResume()V
    .locals 0

    return-void
.end method

.method public onDropMenuStop()V
    .locals 0

    return-void
.end method
