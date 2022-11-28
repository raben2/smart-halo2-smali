.class Lcom/instabug/library/invocation/d/g$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwoFingerSwipeLeftInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/invocation/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/g;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/g$b;->a:Lcom/instabug/library/invocation/d/g;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/instabug/library/invocation/d/g$b;->a:Lcom/instabug/library/invocation/d/g;

    invoke-static {p3, p1, p2}, Lcom/instabug/library/invocation/d/g;->a(Lcom/instabug/library/invocation/d/g;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/invocation/d/g$b;->a:Lcom/instabug/library/invocation/d/g;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/g;->c(Lcom/instabug/library/invocation/d/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TwoFingerSwipeLeftInvoker"

    const-string p2, "Two fingers swiped left, invoking SDK"

    .line 2
    invoke-static {p1, p2}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/library/invocation/InvocationManager;->getInstance()Lcom/instabug/library/invocation/InvocationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/library/invocation/d/g$b;->a:Lcom/instabug/library/invocation/d/g;

    invoke-virtual {p1, p2}, Lcom/instabug/library/invocation/InvocationManager;->setLastUsedInvoker(Lcom/instabug/library/invocation/d/a;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/library/invocation/d/g$b;->a:Lcom/instabug/library/invocation/d/g;

    invoke-static {p1}, Lcom/instabug/library/invocation/d/g;->d(Lcom/instabug/library/invocation/d/g;)Lcom/instabug/library/invocation/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/library/invocation/a;->a()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/invocation/d/g$b;->a:Lcom/instabug/library/invocation/d/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/instabug/library/invocation/d/g;->b(Lcom/instabug/library/invocation/d/g;Z)Z

    return p2
.end method
