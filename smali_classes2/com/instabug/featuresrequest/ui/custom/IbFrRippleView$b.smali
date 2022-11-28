.class Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IbFrRippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$b;->a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$b;->a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Landroid/view/MotionEvent;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView$b;->a:Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;->a(Lcom/instabug/featuresrequest/ui/custom/IbFrRippleView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
