.class Lbike/smarthalo/app/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;


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

    .line 785
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$4;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHelpCardVisibilityChanged(ZZ)V
    .locals 1

    .line 788
    iget-object v0, p0, Lbike/smarthalo/app/activities/MainActivity$4;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/MainActivity;->access$400(Lbike/smarthalo/app/activities/MainActivity;)Llayout/MainToolbarLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Llayout/MainToolbarLayout;->setOverlayVisibility(ZZ)V

    .line 790
    iget-object p2, p0, Lbike/smarthalo/app/activities/MainActivity$4;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const v0, 0x7f0a0158

    invoke-virtual {p2, v0}, Lbike/smarthalo/app/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 792
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 795
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :goto_0
    return-void
.end method
