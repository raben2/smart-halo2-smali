.class Lbike/smarthalo/app/activities/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/MainActivity;->toggleNewFeaturesPageVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/MainActivity;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/MainActivity;Z)V
    .locals 0

    .line 916
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$7;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    iput-boolean p2, p0, Lbike/smarthalo/app/activities/MainActivity$7;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 926
    iget-boolean p1, p0, Lbike/smarthalo/app/activities/MainActivity$7;->val$isVisible:Z

    if-nez p1, :cond_0

    .line 927
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$7;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/MainActivity;->access$700(Lbike/smarthalo/app/activities/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 919
    iget-boolean p1, p0, Lbike/smarthalo/app/activities/MainActivity$7;->val$isVisible:Z

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$7;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/MainActivity;->access$700(Lbike/smarthalo/app/activities/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
