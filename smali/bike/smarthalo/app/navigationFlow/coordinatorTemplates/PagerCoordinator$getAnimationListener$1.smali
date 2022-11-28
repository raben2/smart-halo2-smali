.class public final Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator$getAnimationListener$1;
.super Ljava/lang/Object;
.source "PagerCoordinator.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->getAnimationListener(Lkotlin/jvm/functions/Function0;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "bike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator$getAnimationListener$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationRepeat",
        "onAnimationStart",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $onNavigationCompleted:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator$getAnimationListener$1;->this$0:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;

    iput-object p2, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator$getAnimationListener$1;->$onNavigationCompleted:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 115
    iget-object p1, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator$getAnimationListener$1;->this$0:Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;

    invoke-virtual {p1}, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator;->getViewGenerator()Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/navigationFlow/ViewGeneratorContract;->getAnimationLayer()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lbike/smarthalo/app/navigationFlow/coordinatorTemplates/PagerCoordinator$getAnimationListener$1;->$onNavigationCompleted:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
