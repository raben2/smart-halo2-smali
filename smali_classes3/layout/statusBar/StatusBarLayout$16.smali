.class Llayout/statusBar/StatusBarLayout$16;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StatusBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->initGestureListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/StatusBarLayout;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 595
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$16;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 603
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 604
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 605
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$16;->this$0:Llayout/statusBar/StatusBarLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Llayout/statusBar/StatusBarLayout;->setHelpCardVisibility(Z)V

    const/4 p1, 0x1

    return p1

    .line 609
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
