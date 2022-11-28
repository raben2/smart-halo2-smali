.class Lcom/instabug/library/p/a$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MotionEventRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/view/MotionEvent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic b:Lcom/instabug/library/p/a;


# direct methods
.method private constructor <init>(Lcom/instabug/library/p/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instabug/library/p/a;Lcom/instabug/library/p/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/p/a$c;-><init>(Lcom/instabug/library/p/a;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    invoke-static {v0}, Lcom/instabug/library/p/a;->a(Lcom/instabug/library/p/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/h;->c()V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    const-string v1, "DOUBLE_TAP"

    invoke-static {v0, v1, p1}, Lcom/instabug/library/p/a;->a(Lcom/instabug/library/p/a;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/instabug/library/p/a;->a(Lcom/instabug/library/p/a;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/p/a$c;->a:Landroid/view/MotionEvent;

    .line 2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/instabug/library/p/a$c;->a:Landroid/view/MotionEvent;

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    const-string p3, "FLING"

    invoke-static {p1, p3, p2}, Lcom/instabug/library/p/a;->a(Lcom/instabug/library/p/a;Ljava/lang/String;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    invoke-static {v0}, Lcom/instabug/library/p/a;->b(Lcom/instabug/library/p/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    const-string v1, "LONG_PRESS"

    invoke-static {v0, v1, p1}, Lcom/instabug/library/p/a;->a(Lcom/instabug/library/p/a;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/p/a$c;->b:Lcom/instabug/library/p/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/instabug/library/p/a;->b(Lcom/instabug/library/p/a;Z)Z

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
